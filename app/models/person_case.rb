# frozen_string_literal: true

# PersonCase model
class PersonCase < ApplicationRecord
  validates :case, presence: true
  validates :person, presence: true
end
