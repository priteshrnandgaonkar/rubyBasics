# || operator evaluates the left side
# => If true - returns it
# => Else - returns the right side
# @x = @x || 5 will return 5 the first time and @x the next time
# Short form
# @x ||= 5 - same as above

class Person
	attr_accessor :name
	attr_reader :age

	def initialize (name, ageVar)
		@name = name
		self.age = ageVar
	end

	def age= (new_age)
		@age ||= 5 # default
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("OldPerson",130)
puts person1.age
person1.age = 120
puts person1.age
person1.age = 200
p person1

# class methods; similar to static methods in java,There are three ways to create static methods

class MathFunctions
	def self.double(var) # Method one to create a class method
		times_called
		@@myvar = 0
		var * 2
	end

	class << self   	#Method two to create a class method
		def times_called
			@@times_called ||= 0
			@@times_called += 1
		end
	end
end

def MathFunctions.triple(var)
	times_called
	var * 3
end

puts MathFunctions.double 4
puts MathFunctions.triple 3
puts MathFunctions.times_called 

# Every class inherits implicitly from "Object"
# "Object" itself inherits from BasicObject
# No multiple inheritance
# Mixins are used instead

