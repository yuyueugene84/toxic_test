class Brand < ActiveRecord::Base

	#valideates :Brand_ID, :presence => true
	#valideates :Brand_name, :presence => true
	has_many :products 
	#validates :Brand_name, :presence => true

end
