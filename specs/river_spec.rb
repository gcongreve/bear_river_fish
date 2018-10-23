require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @river1 = River.new("The Tay")
  end


  def test_river_has_name
    expected = "The Tay"
    actual = @river1.name
    assert_equal(expected, actual)
  end


end
