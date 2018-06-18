require_relative "ruby_classes.rb"


earth = Planet.new("Blue Planet")
earth.name  = "Earth"
earth.color = "blue"
puts(earth.name)
puts(earth.color)
earth.say_hi
earth.say_ok
earth.say_hi