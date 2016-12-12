class RecipeGenerator::Rep

 def scrape
  html = open("allrecipes.com/recipes/87/everyday-cooking/vegetarian/")
  doc = Nokogiri::html(html)
  binding.pry 
 end

end
