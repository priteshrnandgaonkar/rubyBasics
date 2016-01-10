
#Error handling and reading contents from the file

#Files automatically gets closed in the end of the block

begin

File.foreach("didnotexist.txt") do |line|
	puts line
	p line
	p line.chomp #chops off newline character
	p line.split #array of words in line
end

rescue Exception => error #Exception gets mapped to the e variable
	puts error.message
	puts "Error has occurred"
end



#Writing to a File
File.open("test.txt", "w") do |file|
	file.puts "One Liner"
	file.puts "Another"
end

if File.exist? 'test.txt'

	File.foreach("test.txt") do |line|
		puts line.chomp
	end
end
