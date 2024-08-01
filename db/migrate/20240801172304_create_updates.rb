# frozen_string_literal: true

# Create Updates
class CreateUpdates < ActiveRecord::Migration[7.1]
  def change
    create_table :updates do |t|
      t.string :title
      t.string :slug
      t.string :link
      t.text :description
      t.datetime :date

      t.timestamps
    end

    add_index :updates, :slug, unique: true
  end
end
