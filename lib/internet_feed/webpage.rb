module InternetFeed
  class Webpage
    def initialize at:
      @location = at
    end

    def remote?
      @location.start_with? 'https://', 'http://'
    end

    def local?
      !remote?
    end
  end
end
