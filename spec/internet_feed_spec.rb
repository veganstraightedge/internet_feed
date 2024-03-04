RSpec.describe InternetFeed do
  describe 'administrivia' do
    it 'has a version number' do
      expect(InternetFeed::VERSION).not_to be_nil
    end

    it 'has the correct class name' do
      expect(described_class.name).to eq 'InternetFeed'
    end
  end

  describe '.from' do
    subject(:feed) { described_class.from url: }

    context 'when url is a string' do
      let(:url) { 'https://example.com' }

      it 'returns an instance of InternetFeed::Feed' do
        expect(feed).to be_a InternetFeed::Feed
      end
    end

    context 'when url is a nil' do
      let(:url) { nil }

      it 'returns nil' do
        expect(feed).to be_nil
      end
    end
  end
end
