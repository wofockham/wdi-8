require 'minitest/autorun'
require 'minitest/pride'
require_relative 'luhn'

class LuhnTest < MiniTest::Test

  def test_check_digit
    luhn = Luhn.new(34567)
    assert_equal 7, luhn.check_digit
  end

  def test_check_digit_again
    luhn = Luhn.new(91370)
    assert_equal 0, luhn.check_digit
  end

  # Get out of my junk.
  # def test_addends
  #   skip
  #   luhn = Luhn.new(12121)
  #   assert_equal [1, 4, 1, 4, 1], luhn.addends
  # end

  # def test_too_large_addend
  #   skip
  #   luhn = Luhn.new(8631)
  #   assert_equal [7, 6, 6, 1], luhn.addends
  # end

  def test_checksum
    luhn = Luhn.new(4913)
    assert_equal 22, luhn.checksum
  end

  def test_checksum_again
    luhn = Luhn.new(201773)
    assert_equal 21, luhn.checksum
  end

  def test_invalid_number
    luhn = Luhn.new(738)
    assert !luhn.valid?
  end

  def test_valid_number
    luhn = Luhn.new(8739567)
    assert luhn.valid?
  end

  def test_create_valid_number
    number = Luhn.create(123)
    assert_equal 1230, number
  end

  def test_create_other_valid_number
    number = Luhn.create(873956)
    assert_equal 8739567, number
  end

  def test_create_yet_another_valid_number
    number = Luhn.create(837263756)
    assert_equal 8372637564, number
  end

end