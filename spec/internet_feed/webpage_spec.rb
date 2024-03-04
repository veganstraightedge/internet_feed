RSpec.describe InternetFeed::Webpage do
  subject(:webpage) { described_class.new at: location }

  describe '.new' do
    context 'when `at:` is nil' do
      it 'returns an ArgumentError' do
        expect { described_class.new }.to raise_error ArgumentError
      end
    end
  end

  describe '#remote?' do
    context 'when at an HTTP URL' do
      let(:location) { 'examples/one_atom_feed.html' }

      it 'is false' do
        expect(webpage.remote?).to be false
      end
    end

    context 'when at an HTTPS URL' do
      let(:location) { 'https://example.com/feed' }

      it 'is true' do
        expect(webpage.remote?).to be true
      end
    end

    context 'when at file path' do
      let(:location) { 'http://example.com/feed' }

      it 'is true' do
        expect(webpage.remote?).to be true
      end
    end
  end

  describe '#local?' do
    context 'when at an HTTP URL' do
      let(:location) { 'http://example.com/feed' }

      it 'is false' do
        expect(webpage.local?).to be false
      end
    end

    context 'when at an HTTPS URL' do
      let(:location) { 'https://example.com/feed' }

      it 'is false' do
        expect(webpage.local?).to be false
      end
    end

    context 'when at file path' do
      let(:location) { 'examples/one_atom_feed.html' }

      it 'is true' do
        expect(webpage.local?).to be true
      end
    end
  end

  describe '#feed_links' do
    context 'when there is one feed link tag' do
      let(:location) { '../../spec/examples/one_atom_feed.html' }

      it 'finds link tags with rel=alternate in HTML' do
        expect(webpage.feed_links).to eq ['/feed']
      end
    end

    context 'when there are multiple feed link tag' do
      let(:location) { '../../spec/examples/one_atom_one_json_feed.html' }

      it 'finds link tags with rel=alternate in HTML' do
        expect(webpage.feed_links).to match_array %w[/feed.json /feed]
      end
    end
  end
end
