#Single quoted literal strings are very literal
# => allow escaping of  ' with \
# => show almost everything else as is

#Double quoted strings
# => Interpret special characters like \n and \t
# => allow string interpolation

single_quoted = 'ice cream \n followed by it\'s a party'
double_quoted = "ice cream \n followed by it\'s a party!"

puts single_quoted
puts double_quoted

def multiply(one, two)  #interpolation in strings
	 " #{one} multiplied by #{two} is #{one * two}"
end

puts multiply(5,6)

# STRING METHODS RETURN A COPY OF A STRING,THEY DO NOT MODIFY THE STRING
# string methods ending with ! modify the existing string
# most others just return a copy
# can also use %Q{long multiline string}
# same behaviour as double quoted string

#LETS LOOK AT EXAMPLES

my_name = " prit"
puts my_name.lstrip.capitalize #It prints Prit
p my_name # It prints " prit", It did not print Prit, 
		  # because the above methods return copy

my_name.lstrip!  # I leftstriped the string in place
p my_name   
my_name[0] = 'k'
p my_name

cur_weather = %Q{It's a hot day outside 
				grab your umbrellas.. }

puts cur_weather

cur_weather.lines do |line|
	line.sub! 'hot', 'rainy'
	puts "#{line.strip}" # it strips the leading and trailing whitespace
end 

