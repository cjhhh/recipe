class RecipeGenerator::Scraper


def get_page
  doc = Nokogiri::HTML(open("http://www.bbcgoodfood.com/recipes/collection/vegetarian"))
end 


def veggies
  self.get_page.css("article")
end

def make_veggies
  veggies.each do |d| 
    RecipeGenerator::Recipe.new_vegetarian(d)
 end
end
 

end
