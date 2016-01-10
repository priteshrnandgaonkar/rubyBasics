class Team
	include Enumerable
	
	attr_accessor :name, :players

	def initialize (name)
		@name = name
		@players = []
	end

	def addPlayers (* teamPlayers)
		@players += teamPlayers
	end

	def to_s
		"#{@name} team: #{@players.join(", ")}"
	end

	def each(&block)
		# what it does is, in the block of players each, its calling the 
		# block of the above each and passing the parameter player 
								
		@players.each { |player| block.call(player) } 
	end
end