require_relative 'dictionary'

class BrailleTranslator
  attr_reader :braille

  def initialize(braille)
    @braille = braille
    @new_braille = braille.delete("\n")
    @dictionary = Dictionary.new
  end

  def braille_lookup
    group_braille_by_six.map do |braille|
      @dictionary.braille_to_english[braille.join]
    end.flatten.join
    end

    def group_braille_by_six
      @new_braille.split("").each_slice(6).to_a
    end

    def conversion_to_english
      array = []
      array << braille.slice(0..1)
      array << braille.slice(23..24)
      array << braille.slice(46..47)
      @dictionary.braille_to_english[array.join]
    end


end
