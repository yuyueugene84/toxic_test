class Product < ActiveRecord::Base
	belongs_to :brand
	#validates :Product_name, :presence => true
end
