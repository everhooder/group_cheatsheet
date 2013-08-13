a = [3, 39, 1, 0, 5]

# Accessing single elements
# -------------------------

a[1]
a.first
>> a[0]
a[5]

a[-1]
a[-5]
a.last

# Accessing multiple elements
# ---------------------------

a[1..3]
a[1..-1]



# A few methods
# -------------

b = [] # another example array

a.empty?
b.empty?

a.length
b.length

a.include?(39)
a.include?(49)

a.reverse
a   # has this changed a?
a.reverse!
a   # has this changed a?

a.sort
a   # has this changed a?
a.sort!
a   # has this changed a?


# Adding elements
# ---------------

a = [1, 2, 3, 4, 5]

a[3] = 6
a   # What is a now?

a[7] = 7
a   # What else has been added?

a << 9  # This one's important - you'll see it a lot

a << "cat"  # is this ok?


# A few useful things
# --------------------

a = "hello how are you".split

puts a.join('_')

# A few other curiosities 
# -----------------------

a = [1, 2, 3]
b = [4, 5, 6]

a.zip(b)

c = [1,2,3,[4,5]]
c.flatten

#create a longer list:
a = (1..4).to_a

# multidimensional arrays
# _______________________

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

# to access elements of them:
s[0][1] # which means you will access the second element of the first array = "swiss"


# iterate each of the 2D arrays use:
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |x|
    x.each do |y|
    puts y
    end
end
# -------------------------


