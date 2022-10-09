class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|      
      t.integer :author_id, null: false, index: true, foreign_key: { to_table: :users }
      t.string :name
      t.decimal :amount
      t.timestamp :created_at

    end
  end
end
