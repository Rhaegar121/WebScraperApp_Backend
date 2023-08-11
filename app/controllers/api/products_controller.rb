class Api::ProductsController < ApplicationController
  def index
  end

  def show
  end

  def create
    url = params[:url]
    scraper = Scraper.new(url)
    scraper.scrape_and_save
    
    render json: { message: 'Scraping and saving complete' }
  end
end
