RSpec.describe InternetFeed::Webpage do
  describe '.new' do
    context 'when `at:` is nil' do
      it 'returns an ArgumentError' do
        expect { described_class.new }.to raise_error ArgumentError
      end
    end
  end

  describe '#remote?' do
    subject(:webpage) { described_class.new at: location }

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
    subject(:webpage) { described_class.new at: location }

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
end
