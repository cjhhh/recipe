class RecipeGenerator::Rep

attr_accessor :name, :duration, :description





  def self.scrape_veggie
    self.veg_recipes
  end





 def self.veg_recipes
  veg_recipes = []
  veg_recipes << self.vegetarian
  veg_recipes
end



 def self.vegetarian
   doc = Nokogiri::HTML(open("http://www.bbcgoodfood.com/recipes/collection/vegetarian"))
   recipe = self.new
   title = doc.css("h3")
   recipe.name = title.collect do |veg|
      puts veg.css("span").text
    end
   durate = doc.css("li.teaser-item__info-item.teaser-item__info-item--total-time")
   recipe.duration = durate.collect do |dose|
  	 puts dose.css("span.mins").text
    end
   description = doc.css(".field .field-items")
   recipe.description = description.collect do |desc|
      puts desc.css(".even").text
    end
   [recipe]
 end

 

end
