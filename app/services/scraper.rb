require 'nokogiri'
require 'open-uri'

class Scraper
  def initialize(url)
    @url = url
  end

  def scrape_and_save
    page = URI.open(@url) 
    doc = Nokogiri::HTML(page)
    
    title = doc.css('._1YokD2').css('h1').css('.B_NuCI').inner_text
    description = doc.css('._1YokD2').css('._1AtVbE').css('._2o-xpa').css('._1mXcCf').css('p').inner_text
    price = doc.css('._1YokD2').css('.dyC4hf').css('._30jeq3').inner_text
    year = doc.css('._1YokD2').css('._1AtVbE').css('._1q8vHb').css('#swatch-0-model_year').css('a').inner_text
    size = doc.css('._1YokD2').css('._1AtVbE').css('._1q8vHb').css('#swatch-0-display_size').css('a').inner_text
    images = doc.css('._1YokD2').css('._1AtVbE').css('._1BweB8').css('img').attr('src').value
    # Product.create_or_update!(
        #   url: @url,
        #   title: title,
        #   description: description,
        #   # ... other attributes ...
        # )
  end
end
