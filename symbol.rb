# Highly optimized strings, adding a colon before the string
# constant names that you dont have to pre declare 
# "Stands for something" string type
# :foo - highly optimized string
# synmbols are guranteed to be uniqur and immutable
# can be converted to a String with to_s Or from 
#String to synmbol with to_sym

puts "string".object_id 
puts "string".object_id #Prints different object id

puts :string.object_id
puts :string.object_id #Prints same object id, as symbols are unique

