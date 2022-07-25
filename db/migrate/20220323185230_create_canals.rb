class CreateCanals < ActiveRecord::Migration[6.1]
  def change
    create_table :canals do |t|
      t.integer :user_id, null: false
      t.integer :subscription_id, null: false

      t.timestamps
    end
  end
end
