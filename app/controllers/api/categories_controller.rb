class Api::CategoriesController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def show
        category = Category.find_by(name: params[:name])

        if category
            product = category.products.last
            image = product.product_images.first&.image
            render json: { category: category, product: product, image: image }, status: 200
        else
            render json: { message: 'Category not found' }, status: 404
        end
    end
  end