class OrdersController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		Order.create({:user_id => current_user.id, :product_id => product.id, :quantity => params[:quantity], :status => "In-Cart", :subtotal => product.price * params[:quantity].to_i, :tax => product.tax * params[:quantity].to_i, :total => product.price * params[:quantity].to_i + product.tax * params[:quantity].to_i})
		flash[:success] = "Congradulations! You have added #{params[:quantity]} #{product.title} to your cart "
		# CartedProduct.create({:product_id => params[:product_id], :order_id => Order.last.id, :quantity => params[:quantity]})
		redirect_to "/products"
	end

	def index
		@orders = Order.where(:user_id => current_user.id)
	end

	def destroy

	end

	
end
