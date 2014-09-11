class Product < ActiveRecord::Base
	belongs_to :brand
	has_many :ingredients
	#validates :Product_name, :presence => true
end
