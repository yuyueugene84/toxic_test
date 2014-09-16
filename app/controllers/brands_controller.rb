class BrandsController < ApplicationController
	def index
		@brands = Brand.all
		sql = "Select * from products order by brand_id"
		sql2 = "Select * from brands"
		sql3 = "SELECT B.Product_ID, A.Brand_name, A.Brand_cname, B.Product_name, B.Product_cname FROM brands A, products B WHERE A.Brand_ID = B.brand_id ORDER BY A.Brand_ID"
		#@products = ActiveRecord::Base.connection.execute(sql3)
		#@brand1 = ActiveRecord::Base.connection.execute(sql2)

		# @options = params[:search_options]

		# if @options = 1
		# 	sql4 = "SELECT B.Product_ID, A.Brand_name, A.Brand_cname, B.Product_name, B.Product_cname FROM brands A, products B WHERE A.Brand_ID = B.brand_id ORDER BY A.Brand_ID"
		# 	@opt_brand = ActiveRecord::Base.connection.execute(sql4)
		# if @options = 2
		# 	sql5 = "SELECT B.Product_ID, A.Brand_name, A.Brand_cname, B.Product_name, B.Product_cname FROM brands A, products B WHERE A.Brand_ID = B.brand_id ORDER BY B.Product_ID"
		# 	@opt_brand = ActiveRecord::Base.connection.execute(sql5)
		# end




	end

	def show
		@brand = Brand.find(params[:id])
		@products = @brand.products

	end

	def new
		@brand = Brand.new
	end

	def create
		@brand = Brand.new(brand_params)
		
		if @brand.save
			redirect_to brands_path
		else
			render :new
		end
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def update
		@brand = Brand.find(params[:id])
		
		if @brand.update(brand_params)
			redirect_to brands_path(@brand)
		else
			render :edit
		end

	end

	def destroy
		@brand = Brand.find(params[:id])
		@brand.destroy
		redirect_to brands_path
	end






private

def brand_params
	params.require(:brand).permit(:Brand_ID, :Brand_name, :Brand_cname)
end



end #end of Brand Controller
