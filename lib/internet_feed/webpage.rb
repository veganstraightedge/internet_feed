module InternetFeed
  class Webpage
    def initialize at:
      @location = at
    end

    def feed_links
      load_file if local?

      link_elements = @file.css('link[rel=alternate]')
      link_elements.map { |link| link.attribute('href').value }
    end

    def remote?
      @location.start_with? 'https://', 'http://'
    end

    def local?
      !remote?
    end

    private

    def file_path
      Dir.chdir(__dir__)
      Pathname.new(@location).cleanpath
    end

    def load_file
      @file = File.open(file_path) { |f| Nokogiri::XML(f) }
    end
  end
end
