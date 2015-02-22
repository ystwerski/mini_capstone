class ChangingDataNamesALot < ActiveRecord::Migration
  def change
  	change_table :product_options do |t|
  		t.remove :black
  		t.remove :white
  		t.remove :blue
  		t.remove :single
  		t.remove :double
  		t.remove :queen
  		t.remove :king
  		t.string :name
  	end
  end
end
