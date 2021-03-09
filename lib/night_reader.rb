require_relative 'braille_translator'

input_file = File.open(ARGV[0], "r")
braille = input_file.read


translator = BrailleTranslator.new(braille)
formatted_output = translator.braille_lookup

output_file = File.open(ARGV[1], "w")
original_message = output_file.write(formatted_output)
count = formatted_output.size

puts "Created '#{ARGV[1]}' containing #{count} characters"
