# frozen_string_literal: true

# Create Trials
class CreateTrials < ActiveRecord::Migration[7.1]
  def change
    create_table :trials do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end

    add_index :trials, :slug, unique: true
  end
end
