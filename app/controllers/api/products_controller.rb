class Api::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    url = params[:url]
    scraper = Scraper.new(url)
    scraper.scrape_and_save
    
    if scraper
      render json: { message: 'Product created successfully' }, status: 200
    else
      render json: { message: 'Unable to create product' }, status: 400
    end
  end
end
