class Selection::Scraper
  
  
  
  attr_accessor :name, :series

@@all = []

def intialize(name=nil, series=nil)
  @name = name
  @series = series
  
end
def self.all
  @@all
end

def self.scrape
  @doc = Nokogiri::HTML(open(https://hackernoon.com/video-game-genres-d0dfc5366b10))
  @scraping_block = @doc.css()
  
  def self.scrape_product
      @scraping_block.each do |ele|
        name = ele.css("a.desc").text.strip
        series = ele.css("div.sub ul li").text.strip
        product = self.new(name, series)
        @@all << product
    end
  end
  
  def self.display_product
    @@all.each.with_index(1) do |product, i|
      puts "   #{i}.   #{product.name}"
    end
  end
  
  def self.display_series(input)
    index = input.to_i - 1
    puts "#{@@all[index].series}"
  end
  
  
  
  
  
  
  
  
  
  