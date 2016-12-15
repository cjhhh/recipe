#Our CLI Controller


class RecipeGenerator::CLI



	def call
   RecipeGenerator::Scraper.new.make_veggies
	 puts "----------Welcome to your Virtual Restaurant----------"
	 puts 
   puts "Here are a list of vegetarian option you can choose from."
   detailed
	end


  # def list
  # recipe = RecipeGenerator::Recipe.find(input.to_i)
  # end

	def detailed
	   puts "Select a number based on the diet that you wish to know more about or press exit to enter:"
       input = nil
     while input != 'exit'
       input = gets.strip
       recipe = RecipeGenerator::Recipe.find(input.to_i)
       case input
       when "1"
       	puts "#{recipe.description}"
       when "2"
       	puts "More info on vegetarian"
       when "3"
       	puts "More info on Lacto-ovo Vegetarian"
       when "4"
       	puts "More info on Pescetarian"
       when "5"
       	puts "More info on vegan"
       when "6"
       	puts "More info on paleo"
       when "7"
       	puts "Puts more info on drinks"
       when "exit"
       	exit
	   else
	   	puts "That is an invalid entry, please try again."
	  end
	 end
	end

	def exit
	   puts
     puts "What? You don't want to look at anymore food? You must be full, come back again tomorrow so you can indulge more!"
     puts
    end


end
