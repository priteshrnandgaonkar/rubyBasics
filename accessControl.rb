#Access control in ruby

# public - no access control is enforced, anybody can call these methods
# protected - can be invoked by the objects of the defining class 
# or its subclasses
# private - cannot be invoked with an explicit receiver

class MyAlgorithm

	private
	
		def test1
			"Private"
		end

	protected 

		def test2
			"Protected"
		end

	public
		def public_again
			"Public"
		end
end

class Another
	def test1
		"Private as declared later on"
	end

	private :test1
end

class Person
	def initialize(name)
		self.name = name # legal exception, we are able to call private method with the self receiver
		puts name # cannot be invoked by self.name
	end

	private

	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end
end

person = Person.new("prit")