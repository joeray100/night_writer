require 'test_helper'
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest < Minitest::Test

  def setup
    @translator = Translator.new("h")
  end

  def test_it_exists
    assert_instance_of Translator, @translator
  end


end
