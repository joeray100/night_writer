require_relative 'test_helper'

class DictionaryTest < Minitest::Test

  def setup
    @dictionary = Dictionary.new
  end

  def test_it_exists
    assert_instance_of Dictionary, @dictionary
  end

  def test_it_can_return_hash_value_from_english_key
    assert_equal ["0....."], @dictionary.english_to_braille["a"]
    assert_equal ["0..000"], @dictionary.english_to_braille["z"]
  end

  def test_it_can_return_hash_value_from_braille_key
    assert_equal ["k"], @dictionary.braille_to_english["0...0."]
    assert_equal ["z"], @dictionary.braille_to_english["0..000"]
  end

end
