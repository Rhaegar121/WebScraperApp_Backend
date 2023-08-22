require 'rails_helper'

RSpec.describe Category, type: :model do
    describe '#validations' do
        before do
            @category = Category.create(name: 'Lenovo')
        end

        it 'is not valid without a url' do
            @category.name = nil
            expect(@category).not_to be_valid
        end
    end
end
