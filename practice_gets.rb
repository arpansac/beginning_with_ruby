puts("enter input")

x = gets

puts("you entered")
puts(x)
puts(x.class)


# yield allows binding a block of code/statement to a function call here
def test_yield
	puts("method begins")
	yield
	puts("method ends")
end


test_yield {puts("inside the yield block statement")}


# another example [optional]
def yield_explained()
	yield 1
	puts("statement 2")
	yield 3
end

yield_explained do |value|
	puts("statement #{value}")
end