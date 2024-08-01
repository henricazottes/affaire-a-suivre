# frozen_string_literal: true

# PersonCase model
class PersonCase < ApplicationRecord
  self.table_name = 'people_cases'

  belongs_to :person
  belongs_to :case
end
