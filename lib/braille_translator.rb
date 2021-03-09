require_relative 'dictionary'

class BrailleTranslator
  attr_reader :braille

  def initialize(braille)
    @braille = braille
    @dictionary = Dictionary.new
  end

  def lookup
    @dictionary.braille_to_english[braille_to_word.join]
  end

  def braille_lookup
    braille_to_word.map do |braille|
      @dictionary.braille_to_english[braille]
    end.flatten.join
  end

  def line_one
    line1 = []
    line1 << @braille.split("\n").each_slice(1).to_a[0]
    one = line1.flatten
  end

  def line_two
    line2 = []
    line2 << @braille.split("\n").each_slice(1).to_a[1]
    two = line2.flatten
  end

  def line_three
    line3 = []
    line3 << @braille.split("\n").each_slice(1).to_a[2]
    three = line3.flatten
  end

  def braille_to_word
    one = line_one.join
    two = line_two.join
    three = line_three.join
    words = []
      until one.empty?
      letter = [].join
      letter << one.slice!(0..1)
      letter << two.slice!(0..1)
      letter << three.slice!(0..1)
      words << letter
    end
    words
  end
end
