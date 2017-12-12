puts "Do you want to encode or decode?"
encode_decode = gets.chomp

while encode_decode != ("encode" || "decode")  # != is not equal to
	puts "Please enter encode or decode!"
	encode_decode = gets.chomp
end

puts "What word/sentence would you like to #{encode_decode}?"
message = gets.chomp
message.downcase! 

