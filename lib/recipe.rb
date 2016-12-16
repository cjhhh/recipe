class RecipeGenerator::Recipe

attr_accessor :name, :duration, :description, :link, :ingredients


@@all = []
   
   

  def self.new_vegetarian(d)
    self.new(
     d.css("h3.teaser-item__title a span").text,
     d.css("ul.teaser-item__info-items li.teaser-item__info-item.teaser-item__info-item--total-time span.mins").text,
     d.css("div.field-item.even").text,
     "http://www.bbbgoodfood.com#{d.css("a").attribute("href").text}"
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
   @ingredients ||= doc.xpath("//div[@class='ingredients-list__content']/ul[1]/li").text
  end

  def doc
   @doc ||= Nokogiri::HTML(open(self.link))
  end 



end
