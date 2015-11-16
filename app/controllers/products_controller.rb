class ProductsController < ApplicationController


	def index1
		@products = Product.all
		key_number = @products.count
		if params[:sort_by] == "discount"
			@products = @products.where("price < ?", 10.00)
		elsif params[:sort_by] == "cheapest"
			@products = @products.order(:price)
		elsif params[:sort_by] == "expensive"
			@products = @products.order(:price => :desc)
		elsif params[:sort_by] == "spice"
			@products = @products.where(:category => "Spice")
		elsif params[:sort_by] == "comfort"
			@products = @products.where("category" => "Comfort")
		elsif params[:sort_by] == "transportation" 
			@products = @products.where(:category => "Transportation")
		end
		if params[:search]
			@products = @products.where("title LIKE ?", "%" + params[:search] + "%")
		end
	end

	def new
	end


	def create
		product = Product.create({:title => params[:title], :price => params[:price], :image => params[:image_url], :description => params[:description], :category => params[:category]})
		flash[:success] = "Product successfully added!"
		redirect_to "/products/#{product.id}"

	end

	def show
		@message_1 = "Total:"
		@message_2 = "Tax:"
		@message_3 = "Grand Total:"
		if params[:random] == "true"
			@product = Product.all.sample
		elsif
			@product = Product.find(params[:id])

		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update({:title => params[:title], :price => params[:price], :image => params[:image_url], :description => params[:description], :category => params[:category], :vendor_id => params[:vendor]})
		flash[:success] = "Product successfully updated!"
		redirect_to "/products/#{@product.id}"	
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:danger] = "Product successfully deleted!"
		redirect_to "/products"
	end

	def reveal
		@message_1 = "Total:"
		@message_2 = "Tax:"
		@message_3 = "Grand Total:"
		if params[:random] == "true"
			@product = Product.all.sample
		elsif
			@product = Product.find(params[:id])
		end

	end

end