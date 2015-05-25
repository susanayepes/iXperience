puts "Hello, how old is your mom?"
mom_age = gets.chomp
puts "That's cool. How old is your dad?"
dad_age = gets.chomp
average = mom_age.to_i + dad_age.to_i / 2.0
puts = "Thanks for answering my creepy questions! The average age of your family is #{average}! Goodbye!"