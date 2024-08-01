# frozen_string_literal: true

# Case model
class Case < ApplicationRecord
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
end
