RSpec.describe InternetFeed do
  describe 'Administrivia' do
    it 'has a version number' do
      expect(InternetFeed::VERSION).not_to be_nil
    end

    it 'has the correct class name' do
      expect(described_class.name).to eq 'InternetFeed'
    end
  end
end
