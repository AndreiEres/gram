# frozen_string_literal: true

require "rails_helper"

describe User do
  describe ".find_or_create_from_auth" do
    context "when user exist" do
      let(:user) { create(:user) }
      let(:auth) do
        {
          "provider" => user.provider,
          "uid" => user.uid,
          "info" => {
            "email" => user.email,
            "name" => user.name,
            "image" => user.image
          }
        }
      end

      it "finds user" do
        find = described_class.find_or_create_from_auth(auth)

        expect(find.id).to be user.id
      end
    end

    context "when user does NOT exist" do
      let(:auth) do
        {
          "provider" => "github",
          "uid" => "123",
          "info" => {
            "email" => "",
            "name" => "",
            "image" => ""
          }
        }
      end

      it "creates user" do
        expect do
          described_class.find_or_create_from_auth(auth)
        end.to change(described_class, :count).by(1)
      end
    end
  end
end
