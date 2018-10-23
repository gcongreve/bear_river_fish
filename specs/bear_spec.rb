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


end
