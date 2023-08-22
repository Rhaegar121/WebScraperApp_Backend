require 'nokogiri'
require 'open-uri'
require_relative '../models/product'

class Scraper
    def initialize(url)
        @url = url
    end

    def scrape_and_save
        begin
        page = URI.open(@url) 
        doc = Nokogiri::HTML(page)
        title = doc.css('._1YokD2').css('h1').css('.B_NuCI')&.text
        category_name = title.split(' ').first
        description = doc.css('._1mXcCf p')&.text
        price = doc.css('._1YokD2').css('.dyC4hf').css('._30jeq3')&.text
        year = doc.css('#swatch-0-model_year a')&.text
        size = doc.css('#swatch-0-display_size a')&.text
        image = doc.css('._1YokD2').css('._1AtVbE').css('._1BweB8').css('img')&.attr('src')&.value

        category = Category.find_or_create_by(name: category_name)

        product = Product.create!(
            url: @url,
            title: title,
            description: description,
            price: price,
            model_year: year,
            size: size,
            category_id: category.id,
        )
        
        product.product_images.create!(image: image) if image
        rescue StandardError => e
        puts "An error occurred while scraping: #{e.message}"
        end
    end
end
