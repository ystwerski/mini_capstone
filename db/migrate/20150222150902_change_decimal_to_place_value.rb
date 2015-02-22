class ChangeDecimalToPlaceValue < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		# t.change :subtotal, 'decimal{6,2}'
  		t. change :tax, :text
  	end
  end
end
