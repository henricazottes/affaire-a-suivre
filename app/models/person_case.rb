# frozen_string_literal: true

# PersonTrial model
class PersonTrial < ApplicationRecord
  self.table_name = 'people_trials'

  belongs_to :person
  belongs_to :case
end
