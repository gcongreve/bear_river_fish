require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Steve the Fish")
  end

  def test_fish_has_name
    expected = "Steve the Fish"
    actual = @fish1.name
    assert_equal(expected, actual)
  end

end
