require "pry"

require_relative "shelter"
require_relative "pets"
require_relative "client"


shelter = Shelters.new("Acme Shelter", "414 Brannan St.")
shelter.animals["spot"] = Pets.new("Spot", "ball", true)
shelter.animals["fido"] = Pets.new("Fido", "bone", true)
shelter.animals["rover"] = Pets.new("Rover", "frisbee", true)
puts "Hello, what is your name?"
input_name = gets.chomp
client1 = Client.new(input_name)

puts "Want to (a)dopt animal or (g)ive up animal or (q)uit"
response = gets.chomp.downcase
while response != "q"
  if response == "a"
    puts "Here are our pets, choose an available pet"
    puts shelter.animals #
    input_choice = gets.chomp.downcase
    if shelter.animals[input_choice].is_avail == true
      shelter.animals[input_choice].is_avail = false
      client1.pets[input_choice] = true
      puts "Congrats you just adopted #{input_choice}"
    else
      puts "Pet not available, try again"
    end
  end

  if response == "g"
    puts "Which pet do you want to give up?"
    input_give_up = gets.chomp.downcase
    if client1.pets[input_give_up] == true
      client1.pets[input_give_up] = false
      shelter.animals[input_give_up].is_avail = true
      puts "You just gave up #{input_give_up}"
    else 
      puts "You don't own that animal"
    end
  end
  puts "Want to (a)dopt animal or (g)ive up animal or (q)uit"  
  response = gets.chomp.downcase
end

binding.pry