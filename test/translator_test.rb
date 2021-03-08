require_relative 'test_helper'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator =  Translator.new("h")

    assert_instance_of Translator, translator
  end

  def test_it_look_up_a_single_braille_character_from_dictionary
    translator =  Translator.new("h")

    expected = ["0.00.."]

    assert_equal expected, translator.look_it_up
  end

  def test_it_look_up_multiple_braille_charactes_from_dictionary
    translator =  Translator.new("hello world")

    expected = ["0.00..", "0..0..", "0.0.0.", "0.0.0.", "0..00.",
                "00.00.", ".000.0", "0..00.", "0.000.", "0.0.0.",
                "00.0.."]

    assert_equal expected, translator.look_it_up
  end

  def test_it_can_create_first_line_of_braille
    translator =  Translator.new("h")

    assert_equal "0.", translator.line_one
  end

  def test_it_can_create_second_line_of_braille
    translator =  Translator.new("h")

    assert_equal "00", translator.line_two
  end

  def test_it_can_create_third_line_of_braille
    translator =  Translator.new("h")

    assert_equal "..", translator.line_three
  end

  def test_it_can_combine_lines_and_format_correct_output
    translator =  Translator.new("h")

    expected = "0.
00
..
"
    assert_equal expected, translator.formatted_output
  end

  def test_it_can_not_go_over_80_characters_in_length
    translator = Translator.new("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")

    expected =
    "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.
................................................................................
................................................................................
0.
..
..
"

    assert_equal expected, translator.formatted_output
  end

end
