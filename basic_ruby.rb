# ***********BEGIN
"hello world"
# returns the result of the statement

print("hello world")
puts("hello world")



# only nil and false are false, 0 is true

# these return nil [nil = absolutely-positive-nothing-value]

# ***********Mathematics operators
5+2

5*2

5**2

5/2

Float(5/2)

5.to_f/2.to_f

5.to_f/2

5/2.to_f

5.fdiv(2)

10.2.to_i


Math.sqrt(4)
# Math is a module which groups similar methods together

Math.sin(30)
Math.tan(90)

# other functions in math module from this link
# https://ruby-doc.org/core-2.3.0/Math.html

# convert decimal to rational
Rational(2.5)


# boolean
true
false


# playing with strings
"This is" + "Ninjas room"

"This is".concat("Ninjas room")

# doesn't work
"2 + 3 = " + 5

"2 + 3 = " + 5.to_s


# string interpolation
room = "Kohat Enclave"
"this is #{room}"

x = 5

"2 + 3 = #{2+3}"
"2 + 3 = #{x}"


# nil is null
# everything is an object
# everything that you write is evaluated
nil.class()
5.class
"a".class

# arrays
arr = [1, 2, 3, 4, 5]
arr.length
arr.size

arr[2]
arr[5]

arr[-1]
arr[-3]

arr[1..3]
arr[1, 3]

arr << [8]
arr.push(8)

arr.unshift(8)
arr.pop(3)
arr.delete(8)
arr.delete_at(0)

# heterogenous arrays
arr = [nil, 2, "Ninjas", true, 5]


# optional
# Can also build using a class
arr = Array.new([1, 2, 3, 4, 5])
arr = Array.new(1, 3)
# [1,1,1]

ninjas_classrooms = []
ninjas_classrooms[2] = "Android Room"


[1,2,3] + [4,5,6]
["a",1,2,3,"b"] - [2,"a","b"]

[1,2,3] & [2,3,4]
[1,2,3] | [2,3,4]
[1,2,3].reverse
[1,2,3].rotate
[1,2,3].rotate(-1)
[4,1,2,1,5,4].uniq

arr.first(3)
arr.last(3)
["a","b","c"].include? "d"

"asdf".include? "a"

["a", "a", "b"].count "a"


# more complicated data types
# hashes (dictionary)
h = Hash.new
h["name"] = "Arpan"
h["language"] = "Ruby"
h["organization"] = "Coding Ninjas"

puts(h)


-----------------------------------------------------------------------------

# how do variables work and get stored in memory 
# variables refer to an object which could be a string, number, boolean...
greeting = "Hello"
meeting = greeting

greeting.object_id
meeting.object_id

# call a function on meeting to modify the object it's pointing to
greeting.concat('123')

# both are still the same
greeting
meeting

greeting = 'Hi'
# '=' is an assignment operator, it always binds the variable on the left
# to the object on the right
# meeting and greeting are now different [the object didn't get
# modified here, a new object got created]
greeting
meeting



# mutable and immutable
# we saw that using a string function on one of the variables, 
# changed the object

# numbers and boolean are immutable
# using mathematical operations on numbers creates 
# a new object instead of changing the object

a = 5
b = a

a.object_id
b.object_id

a += 10
# a refers to a new object whereas b refers to the old object
a
b
# it's not possible to modify a number object, it cannot be changed

# arrays are mutable
arr = [1, 2, 3]
arr.object_id
arr << 4
arr.object_id

-----------------------------------------------------------------------------

# symbols
# example :name
# A symbol is created just once in the memory, so it's better to use symbols wherever
# possible, for comparison, for hash keys, just to save time and memory

h = Hash.new
h[:name] = "Arpan"
h[:language] = "Ruby"

puts(h)

answer = "Yes"
answer == "Yes"
# these two statements create 2 objects (show by object id)

answer = :Yes
answer == :Yes
# this is faster comparison + takes less memory
-----------------------------------------------------------------------------


# loops

for x in 0..5
	puts(x)
end

i = 0
while i < 10 do 
	puts(i)
	i+=1
end

arr = [1, 2, 3, 4, 5]
arr.each do |a|
	puts(a)
end

arr.each_with_index do |a, index|
	puts(a)
	puts(index)
end


5.times do |i|
	puts(i)
end


1.next

i=0
until i < 5 do
	i += 1
	puts(i)
end

# things to explore break, redo, retry

------------------------------------------------------------------------
# going towards methods
def hi
	puts("hello world")
end

# no need of parenthesis
hi #just call the function name


# using parameters
def hi(name="Arpan")
	puts(name)
end

hi
# overriding the default value of name
hi("King")


def hi(*names)
	names
end


# other comparison operators
==
&&
!
||


------------------------------------------------------------------------

# pass by value and pass by reference

# for immutable objects, when they are passed as arguments to a method
# ruby creates a copy (and passes the value in the copy) to the method. Modifying the
# value of argument doesn't modify the original object

a = 5

def add(x)
	x += 5
end

puts(a)
# a remains unchanged

# for mutable objects being passed as arguments to a method, ruby passes
# their reference as the argument. The modified argument's value can be 
# such that the original object gets changed

t = 'Arpan'
def append(name)
	name << ' Garg'
end

puts(t)
# t becomes 'Arpan Garg'


------------------------------------------------------------------------
------------------------------------------------------------------------

# Optional
# mutating and non mutating methods

# mutating methods are which change the original object [this is the case
# of passing by reference]
s = 'abc'

def addToString(x)
	x.concat('d')
	x.upcase!
	x << 'e'
end

addToString(s)
puts(s)

# object referred to by s got modified


# non mutating methods are the ones which don't change the original object
# [this is the case of pass by value]
s = 'abc'
def addToString(x)
	x += 'd'
	puts(x.object_id)
	return x
end

addToString(s)
puts(s)

# here value of s didn't change, instead, a copy of s was created in x when
# we used the '=' (assignment operator) and it referred to a new
# created object


# To find out if an operator or an inbuilt method is non mutating or
# mutating, we need to read it's documentation or do some
# experimenting with it

------------------------------------------------------------------------
# Conditional statements

if true
	puts("it's true")
elsif false
	puts("it's false")
end


puts("hello") if true

# unless [optional because it's confusing in the beginning]
puts("its true") unless (!true)

x = 5	
case x
when 5
	puts(5)
when 10
	puts(10)
else
	puts ('default condition')
end

# upcase
"Arpan".upcase
# downcase
"ARPAN".downcase

# Time.now
Time.now
# you can read about it online


# split
"Arpan Garg".split("G")
# gsub
"Arpan Garg".gsub("G", "g")
# join
x = [1, 2, 3, 4]
x.join(", ")

# Sets
s = Set.new [1, 2, 3, 1]


# You can try this extra part
#gems: humanize and rest client
gem install humanize

require 'humanize'
2.humanize
999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999.humanize

gem install rest-client
require 'rest-client'
RestClient.get('https://www.codingninjas.in').body






