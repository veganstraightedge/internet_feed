require_relative 'internet_feed/version'
require_relative 'internet_feed/feed'

module InternetFeed
  class << self
    attr_reader :url

    def from(url:)
      return nil if url.nil?

      InternetFeed::Feed.new
    end
  end
end
