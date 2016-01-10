######### blocks ###############
# Convention 
# Use {} when writing just a line in blocks
# Enclose multiple line of codes in do ... end
# Blocks are often used as an iterator

1.times { puts "Hello World!" }

2.times do |index|
	if index > 0
		puts index
	end
end

2.times { |index| puts index if index > 0 }

#Two ways to configure blocks in your methods
#1. Implicit
# => Use "block_given?" to see if block was passed in
# => use "yield" to "call" the block
#2. Explicit
# =>  Use "&" in front of the last "parameter"
# =>  Use "call" method to call the 

def two_times_implicit
	return "No block" unless block_given?
	yield
	yield
end

def two_times_explicit( &block ) 
	return "No block" if block.nil?
	block.call
	block.call
end

puts two_times_implicit { puts "block is passed implicityle, and without its declaration in arguments"}

puts two_times_explicit { puts "block is passed explicitly, and with its declaration in arguments"}

puts two_times_implicit
 puts two_times_explicit

