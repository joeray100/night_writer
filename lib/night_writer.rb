require_relative 'english_translator'

input_file = File.open(ARGV[0], "r")
message = input_file.read
translator =  EnglishTranslator.new(message)
formatted_output = translator.formatted_output

output_file = File.open(ARGV[1], "w")
braille = output_file.write(formatted_output)
count = formatted_output.size

puts "Created '#{ARGV[1]}' containing #{count} characters"
