class Product < ApplicationRecord
    belongs_to :category
    has_many :product_images

    validates :url, presence: true
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
end
