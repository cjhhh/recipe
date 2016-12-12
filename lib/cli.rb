#Our CLI Controller


class RecipeGenerator::CLI
	

	def call
	 puts "----------Welcome to your Virtual Restaurant----------"
	 diets
	 exit
	end

	def diets
		puts 
		puts "Here are a list of diets you can choose from."
		puts <<-DOC
		1. Meat-Lovers
		2. Vegetarian
		3. Lacto-ovo Vegetarian
		4. Pescetarian
		5. Vegan
		6. Paleo
		7. Drinks
	  DOC
	  	puts 
	  	detailed
	end


	def detailed
	   
	   puts "Select a number based on the diet that you wish to know more about or press exit to enter:"
       input = nil
     while input != 'exit'
       
       input = gets.chomp
       case input
       when "1"
       	puts "More info on meat lovers"
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
	   end
	 end
	end

	def exit
	 puts
     puts "What? You don't want to look at anymore food? You must be full, come back again tomorrow so you can indulge more!"
     puts
    end


end
