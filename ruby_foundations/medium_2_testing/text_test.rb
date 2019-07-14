require 'minitest/autorun'
require_relative 'text'

class TransactionTest < Minitest::Test
  def setup
    @file = File.open('text.txt')
    @text = Text.new(@file.read)
  end

  def test_swap
    actual = @text.swap('a', 'e')
    expected = (File.read('text.txt')).gsub('a', 'e')
    assert_equal(expected, actual)
  end

  def test_word_count
    actual = @text.word_count
    expected = (File.read('text.txt')).split.count
    assert_equal(expected, actual)
  end

  def teardown
    @file.close
  end
end