require_relative 'test_helper'

class BrailleTranslatorTest < Minitest::Test

  def test_it_exists
    translator =  BrailleTranslator.new("0.00..")

    assert_instance_of BrailleTranslator, translator
  end

  def test_it_look_up_a_single_english_character_from_dictionary
    translator =  BrailleTranslator.new("0.00..")

    expected = "h"

    assert_equal expected, translator.braille_lookup
  end

  def test_brail_one_gives_correct_output_for_two_letters
    translator =  BrailleTranslator.new("0.00..
0..0..")

    expected = "he"

    assert_equal expected, translator.braille_lookup
  end

  def test_it_look_up_multiple_braille_charactes_from_dictionary
    translator =  BrailleTranslator.new("0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0...")

    expected = ["hellow world"]

    assert_equal expected, translator.braille_lookup
  end

end
