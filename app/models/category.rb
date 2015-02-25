class Category < ActiveRecord::Base
	has_many :categoriezed_products
	has_many :products, :through => :categorized_products
end
