#Scope
# Methods and classes begin new scope for variables
# Outer scope variable do not get carred over to the inner scope
# Use local_variables method to see which variables are in the current scope

v1 = "outside"

class MyClass
	def my_method
		 v1 = "inside"
		p v1
		p local_variables
	end
end

p v1
obj = MyClass.new

obj.my_method

p local_variables
p self

# Constants
# Constant is any reference that begins with uppercase, 
# including classes and modules
# Constant's scope rule are different then variable scope rules
# Inner scope can see constants defined in outer scope and can also 
# override outer constants
# Value remains unchanged outside

module Test
	PI = 3.14
	class Test2
		def what_is_pi
			puts PI
		end
	end
end

Test::Test2.new.what_is_pi

module MyModule
	MYCONTANT = 'OuterConstant'
	
	class MyClass
		puts " Before Changing #{MYCONTANT.object_id}"
		MYCONTANT = 'InnerConstant'
		puts "Inside of the class #{MYCONTANT.object_id}"

		def printConstant
			puts MYCONTANT.object_id
		end
	end
	puts "Outside of the class #{MYCONTANT.object_id}"
end

MyModule::MyClass.new.printConstant

# From above code we can see that, MYCONSTANT has same object id
# till " Before Changing #{MYCONTANT.object_id}", once the constant value
# is changed in MyClass the object id is changed and the changed object id is reflected everywhere in the class
# But outside the class the original object id is reflected

# Block inherit outerscope
# Block is a closure
# Remembers the context in which it was defined and use that context whenever
# it is called

class BankAccount
	attr_accessor :id, :amount

	def initialize(id, amount)
		@id = id
		@amount = amount
	end
end

acct1 = BankAccount.new(123, 100)
acct2 = BankAccount.new(124, 200)
acct3 = BankAccount.new(345, -100)

arr = [acct1, acct2, acct3]
totalSum = 0
puts totalSum.object_id

arr.each do |account|  
	totalSum += account.amount
end

puts totalSum.object_id
puts totalSum

# eventhough blocks share the outer scope - a variable created inside
# the block is only available to the block
# parameters to the blocks are always local to the block - even if they have the
# same name as variables in the outer scope
# One can also explicitly declare block local varables afteer a semicolon
# in te block parameter list

adjustment = 5
arr.each do |account;adjustment|  
	adjustment = 10 #local variable
	puts "#{account.amount + adjustment} "
end

puts adjustment #Not affected by block

