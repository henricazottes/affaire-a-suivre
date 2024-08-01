# frozen_string_literal: true

# Create PeopleAndTrials
class CreatePeopleAndTrials < ActiveRecord::Migration[7.1]
  def change
    create_table :people_trials do |t|
      t.string :status
      t.belongs_to :person
      t.belongs_to :trial

      t.timestamps
    end
  end
end
