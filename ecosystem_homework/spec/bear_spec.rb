require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../bear")
require_relative ("../river")
require_relative ("../fish")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Balloo", "Sloth")
    @fish1 = Fish.new("Davey")
    @fish2 = Fish.new("Nemo")
    fishes = [@fish1, @fish2]
    @river = River.new("Amazon", fishes)

  end

  def test_bear_has_name
    expected = "Balloo"
    actual = @bear.name

    assert_equal(expected, actual)

  end

  def test_bear_has_type
    expected = "Sloth"
    actual = @bear.type

    assert_equal(expected, actual)
  end

  def test_does_bear_have_empty_stomach
    expected = 0
    actual = @bear.stomach_contents.count

    assert_equal(expected, actual)

  end

  def test_can_bear_take_fish_from_river
    @bear.eat_fish(@fish1)

    expected = 1
    actual = @bear.stomach_contents.count

    assert_equal(expected, actual)

  end

  def test_has_river_lost_a_fish
    # @bear.eat_fish(@fish1)
    # @river.remove_fish(@fish1)
    @river.remove_fish(@fish1)
    @bear.eat_fish(@fish1)
    expected = 1
    actual = @river.fish_population.count

    assert_equal(expected, actual)
  end


end
