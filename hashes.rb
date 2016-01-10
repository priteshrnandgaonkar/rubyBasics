#Hashes
# Indexed collections of objects references
# created with either {} of Hash.new
# Also known as associative arrays
# Index(key) can be anything, Not just an integer as in the case of arrays

# Acessed using the  [] operator
# Values set using
# => (creation)
# [] (post creation)

editor_props = { "front" => "Arial", 2 => 12, "color" => "red"}

puts editor_props.length

puts editor_props[2]

editor_props.each_pair do |key, value|
	puts "Key:#{key} and Value:#{value}"
end

# if a Hash is created with Hash.new(defaultValue) then by default if 
# any value for key doesnt exist then its default value will be the one which ispassed now

word_frequency = Hash.new(0)
sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1
end

p word_frequency

#in ruby order of thethings into hash is maintained
#if usingsymbols as keys - can use symbol: syntax
#if a hash is the last argument to the method one can drop the curks all together

family_tree_19 = {oldest: "Jim", older: "Joe", younger: "Jack"}
p family_tree_19
family_tree_19[:youngest] = "prit"
p family_tree_19

def adjust_colors(props = {foreground: "red", background: "magenta"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Bckground: #{props[:background]}" if props[:background]
end

adjust_colors foreground: "orange"
adjust_colors foreground: "orange", background: "black" # No curly brackets required if  the hash is the last argument
adjust_colors


