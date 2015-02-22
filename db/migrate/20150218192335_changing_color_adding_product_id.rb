class ChangingColorAddingProductId < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
  		t.integer :product_id
  		t.rename :name, :color
  	end
  end
end
