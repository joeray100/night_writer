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

  def line_one
    line1 = []
    look_it_up.each do |array|
      line1 <<  array[0]
      line1 <<  array[1]
    end
    line1.join
  end

  def line_two
    line2 = []
    look_it_up.each do |array|
      line2 <<  array[2]
      line2 <<  array[3]
    end
    line2.join
  end

  def line_three
    line3 = []
    look_it_up.each do |array|
      line3 <<  array[4]
      line3 <<  array[5]
    end
    line3.join
  end

end
