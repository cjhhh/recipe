class RecipeGenerator::Recipe

attr_accessor :name, :duration, :description, :link, :ingredients


@@all = []
   
   

  def self.new_vegetarian(d)
    self.new(
     d.css("h3.teaser-item__title a span").text,
     d.css("ul.teaser-item__info-items li.teaser-item__info-item.teaser-item__info-item--total-time span.mins").text,
     d.css("div.field-item.even").text,
     "http://www.bbcgoodfood.com#{d.css("a").attribute("href").text}"
    )
  end

  def initialize(name=nil, duration=nil, description=nil, link=nil)
   @name = name
   @duration = duration
   @description = description
   @link = link
   @@all << self
  end

  
  def self.all
   @@all
  end

  def self.find(id)
   self.all[id-1]
  end

  def ingredients
   @ingredients ||= doc.xpath("//div[@class='ingredients-list__content']/ul[1]/li").collect {|items| puts "#{items.text}"}
  end


  def instructions
   @instructions ||= doc.xpath("//section[@id='recipe-method']/div/ol/li/p").map.with_index(1) { |directions, i| puts "#{i}. #{directions.text}" }
  end





  def doc
   @doc ||= Nokogiri::HTML(open(self.link))
  end 



end
