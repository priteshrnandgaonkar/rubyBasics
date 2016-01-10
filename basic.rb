
#In ruby, everything is evaluated and everything is an object.
#There is no concept of primitive data types
#############################################################################################################
#Flow control learning
a = 6

puts a

#Normal if elseif and else
if a == 6
	puts "a is 6"
elsif a == 5
	puts "a is 5"
else 
	puts "Dont know any no.,I m dumb"
end

#Unless statement, useful when u need to execute something when some condition doesnt occur
unless a == 7
	#Do any stuff since is a is not 7
	puts "a is not 7"
end

#while loop
a = 10

while a > 9
 puts a
 a -= 1	
end

#until loop

a = 9

until a > 10
 puts a
 a += 1	
end

#if, unless, until and while on same line
a = 8
puts "one liner" if a == 8

times_2 = 1
times_2 *= 2 while times_2 < 100
	puts times_2

 #false literal and nil objects are always false and everything else is true
  puts "0 is true in ruby--SURPRISE" if 0 #0 is true
##################################################################################################################
#Triple equals, something which is exactly not equal
# like checking a regex or checking the class of the variable
if /sera/ === "coursera"
	puts "Coursera has sera in it"
end

if Integer === 3
	puts "3 is an integer"
end

########################################################################### Methods ###############################################################
def simple
	puts "I m in method with no args and no paranthesis"
end

def simpleWithParens()
	puts "I m in method with paranthesis and no args"
end

simple
simple()
simpleWithParens

def add(one, two)
	one + two #last evaluated line will be returned, No need of return statement,You can pute return statement too.
end

def divide(one, two)
	if two == 0
		puts "Check the denominator while dividing"
	else
		one / two
	end
end

puts add(3,4)

puts divide(12, 0)

def can_divide_by?(number)    #here '?' indicates that the return type of the method is boolean
	return false if number.zero?
	true
end

puts can_divide_by? 3
########################################## Methods with default arguments ##########################################################################################################

#Sometimes if the method has no arguments passes u can pass or use the default arguments

def factorial(n)
	n == 0 ? 1 : n * factorial(n - 1)
end 

def factorial_with_default_args(n = 5) 
	factorial(n)
end

puts factorial 5
puts factorial_with_default_args 6

###################################### Splat ##########################################################################################################

# when u prefix a parameter with a * it means variable lenght of parameters passed and all the variable parameters passed are considered in an array

def maxOfManyNumbers(firsParameter, *numbers, lastParameter)
	numbers.max
end

puts maxOfManyNumbers("dfsf", 3, 1, 34, "fsfsff")
