class CategorizedProduct < ActiveRecord::
	belongs_to :product
	belongs_to :category
end
