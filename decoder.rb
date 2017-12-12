puts "Do you want to encode or decode?"
encode_decode = gets.chomp



puts "What word/sentence would you like to #{encode_decode}?"
message = gets.chomp
message.downcase!