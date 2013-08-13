
# methods

# example:

def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)

# simple demo:
def greeting 
    puts "Hello there!"
end

# method called: simply add its name (not in def)
def array_of_10
  puts (1..10).to_a
end

 array_of_10

# arguments
def cubertino(n)
  puts n ** 3
end

cubertino(8)

# splat arguments
def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")
# ===>
# What up, Justin!
# What up, Ben!
# What up, Kevin Sorbo!
# ["Justin", "Ben", "Kevin Sorbo"]

# return
def cube(n)
  return n ** 3
end

def add(n, m)
    return n + m
    end

    # blocks are nameless methods: example here:
    1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"
