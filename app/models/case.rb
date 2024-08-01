# frozen_string_literal: true

# Case model
class Case < ApplicationRecord
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true

  has_many :people_cases, dependent: nil, class_name: 'PersonCase'
  has_many :people, through: :people_cases
end
