# demo - literal notation

my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

# new, empty hash 

my_hash = Hash.new

# adding stuff to the empty Hash

pets = Hash.new
pets["Stevie"] = "cat"

# access hash 

puts pets["Stevie"]

# hash iteration

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# result:

# Milhouse
# Ralph
# Nelson
# Otto
# Homer: dad
# Marge: mom
# Lisa: sister
# Maggie: sister
# Abe: grandpa
# Santa's Little Helper: dog
# {"Homer"=>"dad", "Marge"=>"mom", "Lisa"=>"sister", "Maggie"=>"sister", "Abe"=>"grandpa", "Santa's Little Helper"=>"dog"}
 
 # To print the keys and the values:
 hash.each { |key, value| puts "#{key}:  #{value}" }
	# example:
secret_identities = { "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each { |x, y| puts "#{x}: #{y}" }

# to put only the values:
lunch_order = { "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

puts lunch_order["Ryan"]
puts lunch_order["Eric"]
puts lunch_order["Jimmy"]
puts lunch_order["Sasha"]
puts lunch_order["Cole"]

# _____________________
# a programme that takes user's input, then builds a hash from that input
# the visual representation is called: histogram 

puts "Text please: "
text = gets.chomp # get the text

words = text.split(" ") # split text into words
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }




