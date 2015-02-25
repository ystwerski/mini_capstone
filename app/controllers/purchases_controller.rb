class PurchasesController < ApplicationController

	def create
		@orders = Order.where(:user_id => current_user.id)
		@orders.each do |order|
			Purchase.create({:user_id => order.user_id, :product_id => order.product_id, :quantity => order.quantity})
		end
		@orders.each do |order|
			Order.destroy(order)
		end
	end
end
