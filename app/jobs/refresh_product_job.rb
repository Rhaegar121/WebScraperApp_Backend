# class RefreshProductJob
#     include Sidekiq::Worker
  
#     def perform(product_id)
#       product = Product.find(product_id)
#       # Perform scraping and updating logic similar to your scraper class
#       # Update scraped_at timestamp after refreshing
#       product.update(scraped_at: Time.now)
#     end
# end