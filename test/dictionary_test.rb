require 'minitest/autorun'
require 'minitest/pride'
require './lib/dictionary'

class DictionaryTest < Minitest::Test

  def setup
    @dictionary = Dictionary.new
  end

  def test_it_exists
    assert_instance_of Dictionary, @dictionary
  end

  def test_it_can_return_hash_value_from_key
    assert_equal ["0....."], @dictionary.english_to_braille["a"]
    assert_equal ["0..000"], @dictionary.english_to_braille["z"]
  end

end
