class Product < ActiveRecord::Base
	has_many :product_options
	belongs_to :vendor
	has_many :orders

	def sale_status
		if price < 2.00
			return "On Sale"
		elsif price >= 2.00
			return "Our price!"
		end
	end

	def tax
		tax = price * 0.09
		return tax
	end

	def grand_total
		grand_total = tax + price
		return grand_total
	end

	def total_total
		price_info =[price, tax, grand_total]
		return price_info
	end

	def cycle_through



	end
end

