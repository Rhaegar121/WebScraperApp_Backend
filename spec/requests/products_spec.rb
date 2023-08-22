require 'rails_helper'

RSpec.describe "Products", type: :request do
    describe "POST /products" do
      before do
        file_path = File.expand_path('../page.html', __dir__)
        stub_request(:any, /www\.flipkart\.com/)
          .to_return(status: 200, body: File.read(file_path))
          
        post "/api/products", params: {
          url: "https://www.flipkart.com/lenovo-23-8-inch-full-hd-va-panel-3-side-near-edgeless-tuv-eye-care-monitor-d24-20/p/itm8f8c6bfc86fb5?pid=MONFV5HRNF4QFVG4&lid=LSTMONFV5HRNF4QFVG4ATFEMN&marketplace=FLIPKART&store=6bo/g0i/9no&srno=b_1_1&otracker=clp_metro_expandable_2_3.metroExpandable.METRO_EXPANDABLE_LG_monitors-store_04FG6HZUUFKV_wp3&fm=neo/merchandising&iid=en_cqpDeGPALSku136Z1OmI0zH1wAQfWAajyx0QrRsORSsfhHAsfBHd3NjxwLzC9qP3wgT8V7eVxEeZUI7AVs5yGg==&ppt=clp&ppn=monitors-store&ssid=lx688hi15c0000001691764371155"
        }
      end

      it "creates a product" do
          expect(Product.count).to eq(1)
      end
    end
end