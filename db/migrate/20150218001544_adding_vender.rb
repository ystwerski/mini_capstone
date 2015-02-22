class AddingVender < ActiveRecord::Migration
  def change
  	change_table :products do |t|
      t.string :vender
  	end
  end
end
