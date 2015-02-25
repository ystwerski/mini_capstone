class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :total, precision: 8, scale: 2
      t.decimal :tax, precision: 7, scale: 2
      t.decimal :subtotal, precision: 9, scale: 2

      t.timestamps null: true
    end
  end
end
