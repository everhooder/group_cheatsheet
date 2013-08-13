 # while loop

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

# until loop

counter = 1
until counter > 10
  puts counter
  counter = counter + 1
  
end

# for loop
# without including the last number

for num in 1...10
  puts num
end

#The reason Ruby counted to 9 and not 10 was because we used three dots in the range; 
#this tells Ruby to exclude the final number in the count: for num in 1...10 
#means "go up to but don't include 10." If we use two dots, this tells Ruby to 
#include the highest number in the range.

# including:
for num in 1..15
  puts num
end

# loop, break, next

i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end

#to show only even/odd

#skip odd:
i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}"
  break if i <= 0
end

#skip even:
i = 20
loop do
  i -= 1
  next if i % 2 == 0
  print "#{i}"
  break if i <= 0
end

# arrays
array = [1,2,3,4,5]

# arrays of arrays

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

# .each
object.each { |item| # Do something }
# or
object.each do |item| # Do something end
  # object is the array = its name!!!

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

#double the placeholder
odds = [1,3,5,7,9]

# Add your code below!
odds.each do |x|
x = x * 2
print "#{x}"
end 

# .times

10.times { print "Food!" }

# programmes

# redactor

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end 

# blocks

['pizza', 'pasta'].each { |food| puts "I love #{food}" }

# or 

['pizza', 'pasta'].each do |food|
    puts "I love #{food}"
end

  #each
    [1,2,3].each do |number|
      puts "#{number} x 12 = #{number * 12}"
  end

  #map
    [1,2,3].map {|n| 2 * n }  #=> [2,4,6]

  #select
    [3, 2, 1].select {|x| x < 2} #=> [1]

    ['apple', 'banana', 'pear'].select { |w| w.length <= 5 } #=> ['apple', 'pear']

  #sort
    # sort by size
    [3, 2, 1].sort #=> [1,2,3]

    # sort alphabetically
    ['apple', 'pear', 'banana'].sort #=> ['apple', 'banana', 'pear']

    # sort by length, by providing a block
    ['apple', 'pear', 'banana'].sort do |a, b|
    if a.length > b.length
        1
    elsif a.length == b.length
        0
    else
        -1
      end
    end
      #or
      # sort by length, by providing a block
    ['apple', 'pear', 'banana'].sort { |a, b| a <=> b }

