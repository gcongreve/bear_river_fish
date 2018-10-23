require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish_a = Fish.new("Adam")
    @fish_b = Fish.new("Bob")
    @fish_c = Fish.new("Colin")
    fishes = [@fish_a, @fish_b, @fish_c]

    @river1 = River.new("The Tay", fishes)
  end


  def test_river_has_name
    expected = "The Tay"
    actual = @river1.name
    assert_equal(expected, actual)
  end


  def test_river_has_any_fish
    expected = 3
    actual = @river1.fish_in_river.count
    assert_equal(expected, actual)
  end

  def test_number_of_fish_in_river
    expected = 3
    actual = @river1.return_fish_number
    assert_equal(expected, actual)
  end

end
