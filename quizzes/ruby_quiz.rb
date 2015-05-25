# Yay shark cage diving! First, we will define a Fish class.

class Fish
  # STEP 1. Fish need 3 arguments to be created:
  # 1) color, which is a string indicating the color of the fish
  # 2) name, which is a string indicating the name of the fish
  # 3) speed, which is an integer indicating the speed of the fish
  # Replace the word args below with the correct arguments.
  def initialize(color, name, speed)
      @color = color
      @name = name
      @speed = speed 
      @food = []
  end
 # STEP 2: save the inputs as instance variables. You can name them whatever they want.
    # Also initialize an instance variable called food, that is always initiallized as an emtpy array
  

  def get_speed
    if @speed>20
      puts "This fish swims super fast!"
    else 
      puts "This fish is kinda slow."
    end
  end
  # STEP 3: We want to know how fast the fish swims! Define a method called "get_speed".
  # The method first checks if the fish's speed is greater than 20. 
  # If the fish's speed is greater than 20, return "This fish swims super fast!"
  # Otherwise, return This fish is kinda slow."
end


# STEP 4: Now we want to create a Shark class that is a child class of Fish. What do 
# we need to add to indicate that Shark inherits from Fish?
class Shark < Fish
  def eat(fish)
    @food = @food << fish 
  end

  def binge_eat(lots_of_food)
    lots_of_food.each do |e|
      self.eat(e)
    end
  end
  # STEP 5: Define a method called eat that takes an argument called fish.
  # In the method, append the new fish into the instance variable food.

  # STEP 6: SHARKS ARE HUNGRY!!! Define a method called binge_eat, that takes in an array
  # of Fish called lots_of_food. Re-use the eat method defined in STEP 5 and apply it
  # to all elements in the array to make sure your shark eats all the food!

  def what_i_ate
    puts "I've eaten #{@food}!"
  end
end

nemo = Fish.new("orange", "nemo", 10)
nemo_speed = nemo.get_speed
puts nemo_speed

sebastian = Fish.new("blue", "sebastian", 20)
sashimi = Fish.new("pink", "sashimi", 1)

bruce =Shark.new("grey", "bruce", 40)

fish_to_eat = [nemo, sebastian, sashimi]
bruce.binge_eat(fish_to_eat)

bruce.what_i_ate
# STEP 7: Let's instantiate some fish!!! Create an instance of fish in the variable "nemo", who is orange, 
# named Nemo, and swims 10 km/hr. Call "get_speed" on your new instance and puts the return value.
# STEP 8: MORE FISH! Create 2 more instances of different types of fish, and save them to 
# variables. You decide what you want to call them!

# STEP 9: Uh oh. There's a shark in these waters. Bruce stopped being vegetarian, and now says
# "Fish are food, not friends". Yikes. Initialize an instance of Shark called Bruce who is gray
# and can swim 40 km/hr. Save it to a variable called bruce.

# STEP 10: BRUCE IS HUNGRY. Call "binge_eat" on bruce. Create an array of the Fish instances you 
# just created, and use that as the method arguments.

# STEP 11: Bruce is happy. Call what_i_ate to see what he ate.

