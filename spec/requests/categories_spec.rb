require 'rails_helper'

RSpec.describe "Categories", type: :request do
    before do
        @category = Category.create(name: 'Lenovo')
        @product = Product.create(url: 'https://www.flipkart.com/url', title: 'Lenovo', description: 'description', price: '₹7,699', model_year: '2020', size: '21.45 inch', category_id: @category.id)
        @product_image = ProductImage.create(image: 'https://rukminim1.flixcart.com/image/416/416/kfzq8i80/monitor/4/4/0/lenovo-d24-20-original-imafwbzgqzgqzg6z.jpeg?q=70', product_id: @product.id)
    end

    describe "GET /api/categories/:name" do
        before do
            get api_category_path(@category.name)
        end

        it "returns a success response" do
            expect(response).to have_http_status(200)
        end

        it 'returns the correct product' do
            expect(response.body).to include(@category.name)
        end
    end
end
