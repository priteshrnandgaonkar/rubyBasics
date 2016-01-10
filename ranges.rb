#Ranges
# Two dots -> all inclusive
# 1 .. 10 both 1 and 10 are included
# Three dots -> end exclusive
# 1 ... 10 (1 is included, 10 is excluded)
# Ranges are very efficient, because they just store the first and last no.
# can be converted to an array with to_a
#used for conditions and intervals

some_range = 1..3
puts some_range.max 
puts some_range.include? 2


puts (1...10) === 5.3

puts ('a'...'r') === 'r' # end exclusive

age = 200
case age
when 0...12 
	puts "Still a baby"
when 13..99 
	puts "Teenager at heart"
else
	puts "You are getting older"
end

new_array = ('k'..'z').to_a.sample(4)
p new_array