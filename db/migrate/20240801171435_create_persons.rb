# frozen_string_literal: true

# Create Persons
class CreatePersons < ActiveRecord::Migration[7.1]
  def change
    create_table :persons do |t|
      t.string :name
      t.string :slug
      t.string :x_handle # former twitter
      t.string :wikipedia_url
      t.text :presentation

      t.timestamps
    end

    add_index :persons, :slug, unique: true
  end
end
