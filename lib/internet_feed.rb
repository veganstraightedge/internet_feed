require_relative 'internet_feed/version'
require_relative 'internet_feed/feed'
require_relative 'internet_feed/webpage'

module InternetFeed
  class << self
    attr_reader :url

    def from url:
      return nil if url.nil?

      InternetFeed::Feed.new url:
    end
  end
end
