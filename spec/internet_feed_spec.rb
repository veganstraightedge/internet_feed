# frozen_string_literal: true

RSpec.describe InternetFeed do
  it 'has a version number' do
    expect(InternetFeed::VERSION).not_to be_nil
  end
end
