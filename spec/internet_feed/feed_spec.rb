RSpec.describe InternetFeed::Feed do
  subject(:feed) { described_class.new url: }

  let(:url) { 'https://example.com' }

  describe '#url' do
    it 'returns the URL that was passed into .new' do
      expect(feed.url).to eq url
    end
  end
end
