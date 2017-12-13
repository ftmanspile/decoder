puts "Do you want to encode or decode?"
encode_decode = gets.chomp

while (encode_decode != "encode") && (encode_decode != "decode")
	puts "Please enter encode or decode!"
	encode_decode = gets.chomp
end

puts "What word/sentence would you like to #{encode_decode}?"
message = gets.chomp
message.downcase!
message_chars = message.split(//)

alphabet_chars = {"a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s", "g" => "t", "h" => "u",
"i" => "v", "j" => "w", "k" => "x", "l" => "y", "m" => "z", "n" => "a", "o" => "b", "p" => "c",
"q" => "d", "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i", "w" => "j", "x" => "k",
"y" => "l", "z" => "m", " " => " "}

output_string = ""

if encode_decode == "encode"

	message_chars.each do |mchar|
  	output_string = output_string + alphabet_chars.fetch(mchar)
  	#output_string += alphabet_chars.fetch(mchar) #alternate way to write line 24
  end

  puts "You're encoded message is: "
  puts output_string

elsif encode_decode == "decode" # else means no check just do when elsif has to have a comparison

	inverted_alphabet_chars = alphabet_chars.invert

	message_chars.each do |mchar|
  	output_string = output_string + inverted_alphabet_chars.fetch(mchar)
  	#output_string += inverted_alphabet_chars.fetch(mchar) #alternate way to write line 37
  end

  puts "You're decoded message is: "
  puts output_string

end

