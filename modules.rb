# Modules
# => As namespaces
# => As mixins
# Using built in Ruby modules, especially Enumerable
# "require_relative"

# Modules are container for classes, methods and constants
# Or other modules
# Like a Class, but cannot be instantiated
# "Class" inherits from "Module" and adds "new"

module Sports
	class Match
		attr_accessor :score
	end
end

module Pattern
	class Match
		attr_accessor :completed
	end
end


match1 = Sports::Match.new
p match1
match1.score = 100
p match1

match2 = Pattern::Match.new
p match2
match2.completed = true
p match2

# interface like java is nothing but Contact- define what a class could do
# Mixins provide a way to share (mix -in) ready code, among multiple classes
# You can include builtin modules like Enumerable that could do the hard
# work for u

# Module as a mix-in's example is as follows
# BY CONVENTION ALL CLASS NAMES AND MODULE NAMES SHOULD BEGIN
# WITH CAPITAL LETTER

module SayMyName
	attr_accessor :name

	def printMyName
		puts "My name is #{@name}"
	end
end
	
class Person
	include SayMyName
end

class Company
	include SayMyName

		def printMyName
		puts "My Company name is #{@name}"
	end
end

person = Person.new
p person
person.printMyName
person.name = "Prit"
person.printMyName

company = Company.new
p company
company.name = "Google"
company.printMyName

