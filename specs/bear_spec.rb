require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')


class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Dave", "Great White")
  end


  def test_bear_has_name
    expected = "Dave"
    actual = @bear1.name
    assert_equal(expected, actual)
  end


end
