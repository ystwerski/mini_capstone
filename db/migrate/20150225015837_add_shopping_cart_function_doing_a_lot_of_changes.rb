class AddShoppingCartFunctionDoingALotOfChanges < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
	  	t.remove :product_options_id
	  	t.remove :product_id
	  	t.remove :quantity
	  	t.string :status
    end 
  end
end
