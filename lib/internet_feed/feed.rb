module InternetFeed
  class Feed
    attr_reader :url

    def initialize url:
      @url = url
    end
  end
end
