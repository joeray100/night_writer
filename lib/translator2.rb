require_relative 'dictionary2'

class Translator2
  attr_reader :braille

  def initialize(braille)
    @braille = braille
    @new_braille = braille.delete("\n")
    @dictionary2 = Dictionary2.new
  end

  def braille_lookup
    group_braille_by_six.map do |braille|
      @dictionary2.braille_to_english[braille.join]
    end.flatten.join
    end

    def group_braille_by_six
      @new_braille.split("").each_slice(6).to_a
    end

  # def braille_output
  #   @new_braille.chars.map do |braille|
  # end
  # end

end
