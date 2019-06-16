# frozen_string_literal: true

class Twitter < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  validates :content, presence: true, length: { maximum: 140 }
end
