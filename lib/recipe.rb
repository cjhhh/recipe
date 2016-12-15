class RecipeGenerator::Recipe

attr_accessor :name, :duration, :description


@@all = []
   
   

  def self.new_vegetarian(d)
    self.new(
     d.css("h3.teaser-item__title a span").first.text,
     d.css("li span.mins").first.text,
     d.css("div.field-item.even").first.text
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
