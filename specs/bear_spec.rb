require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')


class BearTest < MiniTest::Test

  def setup
    @fish_d = Fish.new("Donald")
    @fish_e = Fish.new("Ernest")
    @fish_f = Fish.new("Frank")
    fishes = [@fish_d, @fish_e, @fish_f]

    @river2 = River.new("Forth", fishes)

    @bear1 = Bear.new("Dave", "Great White")

  end

  def test_bear_has_name
    expected = "Dave"
    actual = @bear1.name
    assert_equal(expected, actual)
  end

  def test_bear_has_type
    expected = "Great White"
    actual = @bear1.type
    assert_equal(expected, actual)
  end

  def test_bear_has_empty_stomach
    assert_equal(true, @bear1.stomach.empty?)
  end

  def test_bear_can_eat_fish__stomach_full
    @bear1.eats_fish(@river2.fish_in_river)
    assert_equal(false, @bear1.stomach.empty?)
  end

  def test_bear_can_eat_fish___river_fish_decrease
    @bear1.eats_fish(@river2.fish_in_river)
    assert_equal(2, @river2.return_fish_number)
  end

  def test_how_much_bear_has_eaten
    assert_equal(0, @bear1.food_count)
    @bear1.eats_fish(@river2.fish_in_river)
    assert_equal(1, @bear1.food_count)
  end

  def test_bear_can_roar
    expected = "RAAARGH!"
    actual = @bear1.roar
    assert_equal(expected, actual)
  end

end
