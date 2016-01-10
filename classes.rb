# Classes
# Instance variable begin with @
# @name
# Instance variables are not declared
# They spring into existence when needed
#Once they came into existence they are avaible to all instance methods

# Object creation
# calling new method creates an instance of class
# new causes "initialize"
#Objects state can be initialized inside "initialize", the constructor

# Instance variables are private by default
# Inorder to access them one has to write setter and getter methods
# Methods have public acess by default

# There should be easy way to create setter and getter
# Use "attr_*" instead
# attr_acessor - getter and setter
# attr_reader - getter only
# attr_writer - setter only

class Person
	def initialize (name, age)
		@name = name
		@age = age
	end

	def get_info
		@hobby = "Listening music"
		"Name: #{@name} Age:#{@age}"
	end

	def name # getter
		@name
	end

	def name= (new_name) #setter
		@name = new_name
	end

end

person1 = Person.new("Pritesh",22)
p person1
puts person1.get_info
p person1.instance_variables
puts person1.name
person1.name = "prit"
p person1.name

class Person2
	attr_accessor :name, :age
	def initialize (name, ageVar)
		@name = name
		@age = ageVar
	end
end

person2 = Person2.new("mom", 8)
p person2.name
p person2
puts person2.age
person2.name = "prit2"
person2.age = 22
p person2
person2.age = "twentytwo"
p person2.age

class Person3
	attr_accessor :name
	attr_reader :age

	def initialize (name, ageVar)
		@name = name
		self.age = ageVar
	end

	def age= (new_age)
		@age = new_age unless new_age > 120
	end
end

person3 = Person3.new("Jasu", 80)
p person3
person3.age = 30
p person3



