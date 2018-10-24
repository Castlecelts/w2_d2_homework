require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../river")
require_relative ("../fish")

class RiverTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Ted")
    @fish2 = Fish.new("Sam")

    fishes = [@fish1, @fish2]
    @river = River.new("Amazon", fishes)

  end


  def test_river_has_name
    expected = "Amazon"
    actual = @river.name

    assert_equal(expected, actual)

  end


  def test_does_river_hold_fish

    expected = 2
    actual = @river.fish_population.count

    assert_equal(expected, actual)
  end

  def test_add_fish_to_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    expected = 4
    actual = @river.fish_population.count

    assert_equal(expected, actual)

  end

  def test_remove_fish_from_river
    @river.remove_fish()
    @river.remove_fish()
    expected = 0
    actual = @river.fish_population.count

    assert_equal(expected, actual)

  end
end
