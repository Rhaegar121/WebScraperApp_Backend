require 'rails_helper'
require_relative '../app/services/scraper'

RSpec.describe Scraper do
  describe '#scrape_and_save' do
    it 'creates a product' do
      url = 'https://www.flipkart.com/samsung-22-inch-full-hd-ips-panel-monitor-ls22c310eawxxl/p/itmac31067559ef1?pid=MONGAQTQKCEZGVSC&lid=LSTMONGAQTQKCEZGVSCG4LB7V&marketplace=FLIPKART&fm=productRecommendation%2Fsimilar&iid=R%3As%3Bp%3AMONFV5HRNF4QFVG4%3Bl%3ALSTMONFV5HRNF4QFVG4ATFEMN%3Bpt%3App%3Buid%3A0bc63ea9-39d6-11ee-ab61-1f738cc21b53%3B.MONGAQTQKCEZGVSC&ppt=pp&ppn=pp&ssid=lx688hi15c0000001691764371155&otracker=pp_reco_Similar%2BProducts_12_SAMSUNG%2B22%2Binch%2BFull%2BHD%2BIPS%2BPanel%2BMonitor%2B%2528LS22C310EAWXXL%2529_MONGAQTQKCEZGVSC_productRecommendation%2Fsimilar_11&otracker1=pp_reco_NA_productRecommendation%2Fsimilar_Similar%2BProducts_DESKTOP_HORIZONTAL_productCard_cc_12_NA_view-all&cid=MONGAQTQKCEZGVSC'
      scraper = described_class.new(url)
      
      expect { scraper.scrape_and_save }.to change(Product, :count).by(1)
    end
  end
end
