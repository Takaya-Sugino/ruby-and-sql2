# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

brians_favorite_food = "tacos"
brians_favorite_food = String.new("tacos")
bens_favorite_food = "sushi"

puts brians_favorite_food.upcase
puts bens_favorite_food.upcase

# String Class

# String Methods
class Dog 
    def speak
        puts "woof"
    end
end

jenkins = Dog.new 
jenkins.speak
# jenkins.sit no sit function error

rover = Dog.new
rover.speak

class Cat 
    def speak 
        puts "meow"
    end
end

# Custom Class

