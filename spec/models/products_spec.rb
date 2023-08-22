require 'rails_helper'

RSpec.describe Product, type: :model do
    describe '#validations' do
        before do
            @product = Product.create(url: 'https://www.flipkart.com/url', title: 'Lenovo', description: 'description', price: '₹7,699', model_year: '2020', size: '21.45 inch', category_id: 1)
        end

        it 'is not valid without a url' do
            @product.url = nil
            expect(@product).not_to be_valid
        end

        it 'is not valid without a title' do
            @product.title = nil
            expect(@product).not_to be_valid
        end

        it 'is not valid without a description' do
            @product.description = nil
            expect(@product).not_to be_valid
        end

        it 'is not valid without a price' do
            @product.price = nil
            expect(@product).not_to be_valid
        end
    end
end