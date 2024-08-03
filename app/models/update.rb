# frozen_string_literal: true

# Update model
class Update < ApplicationRecord
  validates :title, presence: true
  validates :link, presence: true
  validates :slug, presence: true, uniqueness: true

  def to_param
    slug
  end
end
