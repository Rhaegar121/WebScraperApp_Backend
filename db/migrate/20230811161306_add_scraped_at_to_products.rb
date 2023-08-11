class AddScrapedAtToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :scraped_at, :datetime
  end
end
