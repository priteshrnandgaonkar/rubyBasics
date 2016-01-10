class Dog
	def to_s
		"Dog"
	end

	def bark
		"Big bow bow"
	end
end

class SmallDog < Dog

	def bark   #override
		"small bow bow"
	end

end

dog = Dog.new # bytw new is class method
p dog
puts dog.bark

smallDog = SmallDog.new
p smallDog
puts smallDog.bark

puts "#{dog}1 barks is #{dog.bark}"
puts "#{dog}2 barks is #{smallDog.bark}"