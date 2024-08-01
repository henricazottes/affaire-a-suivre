# frozen_string_literal: true

# Trial model
class Trial < ApplicationRecord
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true

  has_many :people_trials, dependent: nil, class_name: 'PersonTrial'
  has_many :people, through: :people_trials
end
