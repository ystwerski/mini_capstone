class DeleteVendorAttributeFromProducts < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		t.remove :vender
  		t.integer :vendor_id
  	end
  end
end
