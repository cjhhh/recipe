#Our CLI Controller


class RecipeGenerator::CLI



	def call
   RecipeGenerator::Scraper.new.make_veggies
	 puts "----------Welcome to your Virtual Restaurant(Vegetarian)----------"
	 puts 
   puts "Here are your menu options:"
   print_options
	end

 


  def list
   recipe = RecipeGenerator::Recipe.find(input.to_i)
  end

  def print_options
    puts ""
    RecipeGenerator::Recipe.all[0, 25].each.with_index(1) do |recipe, i|
    puts "#{i}. #{recipe.name}"
   end
   puts ""
   general
  end

   def general
  puts "Select a number based on the food dish that you wish to know more about, type 'exit' to exit or b to go back a page: "
	   input = nil
     while input != 'exit'
       input = gets.strip
       recipe = RecipeGenerator::Recipe.find(input.to_i)
       if input.to_i > 0
        puts ""
        puts "----------#{recipe.name}: Ingredients----------"
       	recipe.ingredients
        puts "--------------------Recipe Directions--------------------"
        recipe.instructions
        puts ""
        puts "Scroll up and down in order to see your previous recipes, enter a >different< number, or type 'exit' to exit the program."
       elsif input == "exit"
       	exit
	   else
	   	puts "That is an invalid entry, please type a different number (than previously entered) ,or 'exit' "
	  end  
	 end
	end

	def exit
	   puts
     puts "What? You don't want to look at anymore food? You must be full, come back again tomorrow so you can indulge more!"
     puts
    end


end
