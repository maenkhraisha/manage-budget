# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.string :name
      t.timestamp :created_at
    end
  end
end
