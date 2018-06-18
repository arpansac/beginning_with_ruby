class Planet
	attr_accessor :name, :color

	def initialize(name)
		# @name = name
	end
	
	def say_hi
		
		puts("Hello #{@name}")
	end

	def say_ok
		@name = "Something"
		say_hi
		puts("ok #{@name}")
	end

end

mars = Planet.new("mars")
# mars.say_ok
mars.say_hi


# Inheritance

# earth = Planet.new("Blue Planet")
# earth.name  = "Earth"
# earth.color = "blue"
# puts(earth.name)
# puts(earth.color)
# earth.say_hi
# earth.say_ok
# earth.say_hi

# class Country < Planet

# end

# c = Country.new("asdf")

# puts(c.name)

# Things to explore more, explicitly setting public, private scopes in classes












