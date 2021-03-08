require 'minitest/autorun'
require 'minitest/pride'
require './lib/dictionary2'

class Dictionary2Test < Minitest::Test

  def setup
    @dictionary2 = Dictionary2.new
  end

  def test_it_exists
    assert_instance_of Dictionary2, @dictionary2
  end

  def test_it_can_return_hash_value_from_key
    assert_equal ["k"], @dictionary2.braille_to_english["0...0."]
    assert_equal ["z"], @dictionary2.braille_to_english["0..000"]
  end

end
