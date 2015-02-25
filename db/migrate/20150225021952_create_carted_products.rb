class CreateCartedProducts < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
	  	t.integer :product_id
	  	t.integer :quantity
    # create_table :carted_products do |t|
      # t.string :product_id
      # t.string :order_id
      # t.string :quantity

      # t.timestamps null: true
    end
  end
end
