# frozen_string_literal: true

# Person model
class Case < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
end
