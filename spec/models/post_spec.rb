# frozen_string_literal: true

require "rails_helper"

describe Post do
  describe "associations" do
    it { is_expected.to belong_to(:user) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to have_one_attached(:image) }
  end
end
