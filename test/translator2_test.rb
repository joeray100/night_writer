require_relative 'test_helper'

class Translator2Test < Minitest::Test

  def test_it_exists
    translator2 =  Translator2.new("0.00..")

    assert_instance_of Translator2, translator2
  end

  def test_it_look_up_a_single_english_character_from_dictionary
    translator2 =  Translator2.new("0.00..")

    expected = "h"

    assert_equal expected, translator2.braille_lookup
  end

  def test_brail_one_gives_correct_output_for_two_letters
    translator2 =  Translator2.new("0.00..
0..0..")

    expected = "he"

    assert_equal expected,translator2.braille_lookup
  end

#   def test_it_look_up_multiple_braille_charactes_from_dictionary
#     translator2 =  Translator2.new("0.0.0.0.0....00.0.0.00
# 00.00.0..0..00.0000..0
# ....0.0.0....00.0.0...")
#
#     expected = ["hellow world"]
#
#     assert_equal expected, translator2.
#   end
#
#   def test_it_can_not_go_over_80_characters_in_length
#     translator2 = Translator2.new("0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.
#     ................................................................................
#     ................................................................................
#     0.
#     ..
#     ..
#     ")
#
#     # expected =
#
#     assert_equal nil, translator2.
#   end

end
