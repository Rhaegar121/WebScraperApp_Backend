# class RefreshExpiredProductsJob
#     include Sidekiq::Worker
  
#     def perform
#       expired_products = Product.where("scraped_at <= ?", 1.week.ago)
#       expired_products.each do |product|
#         RefreshProductJob.perform_async(product.id)
#       end
#     end
# end