class ChangingDecimalsToHoldingPlaces < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.change :subtotal, :text
  	# 	t.change :tax, :decimal{6,2}
  	# 	t.change :total, :decimal{9,2}
  	end
  end
end
