# frozen_string_literal: true

# Person model
class Person < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  has_many :people_trials, dependent: nil, class_name: 'PersonTrial'
  has_many :trials, through: :people_trials

  def to_param
    slug
  end
end
