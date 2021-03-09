require_relative 'test_helper'

class BrailleTranslatorTest < Minitest::Test

  def test_it_exists
    translator =  BrailleTranslator.new("0.00..")

    assert_instance_of BrailleTranslator, translator
  end

  def test_it_look_up_a_single_english_character_from_dictionary
    translator =  BrailleTranslator.new("0.00..")

    expected = ["h"]

    assert_equal expected, translator.lookup
  end

  def test_it_can_seperate_line_one_brail
    translator =  BrailleTranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")

    expected = ["0.0.0.0.0....00.0.0.00"]

    assert_equal expected , translator.line_one
  end

  def test_it_can_seperate_line_two_brail
    translator =  BrailleTranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")

    expected = ["00.00.0..0..00.0000..0"]

    assert_equal expected , translator.line_two
  end

  def test_it_can_seperate_line_three_brail
    translator =  BrailleTranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")

    expected = ["....0.0.0....00.0.0..."]

    assert_equal expected , translator.line_three
  end

  def test_it_can_extract_braille_into_letters_and_put_in_array
    translator =  BrailleTranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")

    expected = ["0.00..", "0..0..", "0.0.0.", "0.0.0.", "0..00.", "......", ".000.0", "0..00.", "0.000.", "0.0.0.", "00.0.."]

    assert_equal expected, translator.braille_to_word
  end

  def test_it_can_trasnlate_braille_array_of_letters_into_english_words
    translator =  BrailleTranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")

    assert_equal "hello world", translator.braille_lookup
  end

end
