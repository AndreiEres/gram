# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user

  validates :user, presence: true

  has_one_attached :image
end
