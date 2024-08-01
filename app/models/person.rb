# frozen_string_literal: true

# Person model
class Person < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
end
