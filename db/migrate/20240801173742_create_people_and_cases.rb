# frozen_string_literal: true

# Create PeopleAndCases
class CreatePeopleAndCases < ActiveRecord::Migration[7.1]
  def change
    create_table :people_cases do |t|
      t.string :status
      t.belongs_to :person
      t.belongs_to :case

      t.timestamps
    end
  end
end
