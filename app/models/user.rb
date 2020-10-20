# frozen_string_literal: true

class User < ApplicationRecord
  def self.find_or_create_from_auth(auth)
    auth_info = auth["info"]
    create_with(email: auth_info["email"], name: auth_info["name"], image: auth_info["image"])
      .find_or_create_by(provider: auth["provider"], uid: auth["uid"])
  end
end
