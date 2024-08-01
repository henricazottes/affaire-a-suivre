# frozen_string_literal: true

# Create Cases
class CreateCases < ActiveRecord::Migration[7.1]
  def change
    create_table :cases do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end

    add_index :cases, :slug, unique: true
  end
end
