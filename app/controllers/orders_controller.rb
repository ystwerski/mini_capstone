class OrdersController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		Order.create({:user_id => current_user.id, :product_id => params[:product_id], :quantity => params[:quantity], :subtotal => product.price * params[:quantity].to_i, :tax => product.tax * params[:quantity].to_i, :total => product.price * params[:quantity].to_i + product.tax * params[:quantity].to_i})
		flash[:success] = "Your order has been successfully admitted! Our buisness associates will contact you shortly."
		redirect_to "/products"
	end
end
