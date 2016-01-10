# In ruby arrays are autoexpandable
# Indexed using [] operator
# can be indexed with negative numberss
# heterogenous types allowed in the same array
# can use %w{str1 str2} for stringarray creation

het_array = [1, "two", :three]

puts het_array[2]  #prints three

arr_words = %w{ what a great day today}
puts arr_words[-2] #prints day

puts "#{arr_words.first} - #{arr_words.last}"

p arr_words[-3, 2] # go back three and take 2 objects from there, 
				   # useful in making subarray

p arr_words[2..4]

#Make a string ut of array elements seperated bt ','

puts arr_words.join(',')

#################### Modifying an array ################################
# Append : push or <<
# Remove: pop or shift
# Set: [] = (method)
# Randomly pull elements out with sample
# Sort or reverse with sort! and reverse!

#Lets make a stack
stack = []
stack << "one"
stack.push :two
puts "Printing the current value of stack"
p stack
puts "Poped value"
puts stack.pop
puts "Stack after removal of an element"
p stack

#lets make a queue

queue = []
queue.push("one")
queue << :two
queue.push 3
puts "Printing the current value of queue"
p queue
puts "Dequeud value"
puts queue.shift
puts "Queue after removal of an element"
p queue

a =[5,3,4,2]
p a
a.sort!.reverse!
p a
p a.sample(1)
a[6] = 65
p a

##Lots of useful methods 
#each - loop through array
# select - filter array by selecting
#reject - filter array by rejecting
# map - modify each element in the array

array = [1, 3, 4, 7, 8, 10]
array.each { |num| print num }

new_array = array.select {|num| num > 4}
p new_array

new_array = array.select { |num|  num > 4}
				.reject { |num|  num.odd?}
p new_array

new_array = array.map { |e| e * 3 }
p new_array
