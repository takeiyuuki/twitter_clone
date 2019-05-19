# frozen_string_literal: true

class Twitter < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
end
