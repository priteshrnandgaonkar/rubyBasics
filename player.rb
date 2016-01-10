# Enumerable module has map, select, reject methods which 
# can be included in any class anone can use them
# Provide an implementation of each method, then all other implementations
# for map... will be automatically available to u

class Player
	attr_reader :name, :age, :skill_level

	def initialize (name, age, skill_level)
		@name = name
		@age = age
		@skill_level = skill_level
	end

	def to_s
		"<#{name}: #{skill_level}(SL), #{age}(AGE)>"
	end
end