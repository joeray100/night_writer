require_relative 'dictionary2'

class Translator2
  attr_reader :braille

  def initialize(braille)
    @braille = braille
    @new_braille = braille.delete("\n")
    @dictionary2 = Dictionary2.new
  end

  def look_it_up
    @braille.chars.map do |character|
      @dictionary.braille_to_english[character]
    end.flatten
  end

  def line_one
    one = look_it_up.map do |array|
      array[0] + array[1]
    end
    one.join
  end

  def line_two
    two = look_it_up.map do |array|
      array[2] + array[3]
    end
    two.join
  end

  def line_three
    three = look_it_up.map do |array|
      array[4] + array[5]
    end
    three.join
  end

  def formatted_output
    format = []
    if line_one.size < 3
      one = line_one.insert(2, "\n")
      two = line_two.insert(2, "\n")
      three = line_three.insert(2, "\n")
      format << one
      format << two
      format << three
      format.join
    elsif line_one.size < 80
      one = line_one + "\n"
      two = line_two + "\n"
      three = line_three + "\n"
      format << one
      format << two
      format << three
      format.join
  elsif line_one.size > 80
      one = line_one.insert(80, "\n")
      two = line_two.insert(80, "\n")
      three = line_three.insert(80, "\n")
      format << one
      format << two
      format << three
      format << format[0].slice!(81..161) + "\n"
      format << format[1].slice!(81..161) + "\n"
      format << format[2].slice!(81..161) + "\n"
      format.join
    end
  end

end
