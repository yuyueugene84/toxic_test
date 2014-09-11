class IngredientsController < ApplicationController
	def new
		@brand = Brand.find(params[:brand_id])
		@product = Product.find(params[:product_id])
		@ingredient = @product.ingredients.build
	end

	def show
		@brand = Brand.find(params[:brand_id])	
		@product = Product.find(params[:product_id])
		@ingredient = @product.ingredients.find(params[:id])
	end

	def create
		@brand = Brand.find(params[:brand_id])	
		@product = Product.find(params[:product_id])
		@ingredient = @product.ingredients.new(ingredient_params)

		if @ingredient.save
	 		redirect_to brand_product_path(@brand, @product)
	 	else
	 		render :new
	 	end
	end

	def edit
		@brand = Brand.find(params[:brand_id])	
		@product = Product.find(params[:product_id])
		@ingredient = @product.ingredients.find(params[:id])
	end

	def update
		@brand = Brand.find(params[:brand_id])
		@product = Product.find(params[:product_id])
		@ingredient = @product.ingredients.find(params[:id])

		if @ingredient.update(ingredient_params)
	       redirect_to brand_product_path(@brand, @product)
		else
		   render :edit
		end
	end

	def destroy
		@product = Product.find(params[:product_id])
		@ingredient = @product.ingredients.find(params[:id])

		@ingredient.destroy
		redirect_to brand_product_path(@product)
	end

private
	def ingredient_params
		params.require(:ingredient).permit(:Ingredient_ID, :Ingredient_name, :Ingredient_cname, :CAS_Number)
	end

end
