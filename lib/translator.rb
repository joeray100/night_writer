class Translator
  attr_reader :message,
              :dictionary

  def initialize(message)
    @message = message
    @dictionary = Dictionary.new
  end

  def look_it_up
    @message.chars.map do |character|
      @dictionary.english_to_braille[character]
    end.flatten
  end

end
