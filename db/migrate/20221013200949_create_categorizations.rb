class CreateCategorizations < ActiveRecord::Migration[7.0]
  def change
    # This is enough; you don't need to worry about order
    # create_join_table :groups, :purchases

    create_table :categorizations do |t|
      t.references :group, null: false, foreign_key: {to_table: :groups}
      t.references :purchase, null: false, foreign_key: {to_table: :purchases}
    end
  end
end

