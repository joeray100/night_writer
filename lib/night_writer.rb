input_file = File.open(ARGV[0], "r")
message = input_file.read
count = input_file.size
input_file.close

output_file = File.open(ARGV[1], "w")
braille = output_file.write(message)
output_file.close

puts "Created '#{ARGV[1]}' containing #{count} characters"
