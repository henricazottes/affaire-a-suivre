# frozen_string_literal: true

# Person model
class Person < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  has_many :people_cases, dependent: nil, class_name: 'PersonCase'
  has_many :cases, through: :people_cases
end
