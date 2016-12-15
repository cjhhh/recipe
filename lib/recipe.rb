class RecipeGenerator::Recipe

attr_accessor :name, :duration, :description


@@all = []
   
   

  def self.new_vegetarian(d)
    self.new(
     d.css("h3.teaser-item__title a span").text,
     d.css("ul.teaser-item__info-items li.teaser-item__info-item.teaser-item__info-item--total-time span.mins").text,
     d.css("div.field-item.even").text
    )
  end

  def initialize(name=nil, duration=nil, description=nil)
   @name = name
   @duration = duration
   @description = description
   @@all << self
  end
  
  def self.all
   @@all
  end

  def self.find(id)
   self.all[id-1]
  end

 



end
