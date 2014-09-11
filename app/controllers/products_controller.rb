class ProductsController < ApplicationController

	def new
		@brand = Brand.find(params[:brand_id])
		@product = @brand.products.build
		#@product = @brand.products.new(product_params)
	end

	def show
		@brand = Brand.find(params[:brand_id])
		@product = @brand.products.find(params[:id])
		@ingredients = @product.ingredients
		#@products = @brand.products
		#@product = @brand.products
		#@products= @brand.products.find(params[:id])
	end

	def create
	    @brand = Brand.find(params[:brand_id])
	    @product = @brand.products.new(product_params)

	 	if @product.save
	 		redirect_to brand_path(@brand)
	 	else
	 		render :new
	 	end
	end

	def edit
		@brand = Brand.find(params[:brand_id])
		@product= @brand.products.find(params[:id])

	end

	def update
		@brand = Brand.find(params[:brand_id])
		@product= @brand.products.find(params[:id])

		if @product.update(product_params)
	       redirect_to brand_product_path(@brand, @product)
		else
		   render :edit
		end
 	end

 	def destroy
 		@brand = Brand.find(params[:brand_id])
		@product= @brand.products.find(params[:id])

		@product.destroy
		redirect_to brand_path(@brand)
 	end

private

	def product_params
		params.require(:product).permit(:Product_ID, :Product_name, :Product_cname)
	end


end
