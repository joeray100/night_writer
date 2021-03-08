require_relative 'translator'

input_file = File.open(ARGV[0], "r")
message = input_file.read
count = input_file.size
translator =  Translator.new(message)
formatted_output = translator.formatted_output
input_file.close

output_file = File.open(ARGV[1], "w")
braille = output_file.write(formatted_output)
output_file.close

puts "Created '#{ARGV[1]}' containing #{count} characters"
