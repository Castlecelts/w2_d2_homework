require ("minitest/autorun")
require ("Minitest/rg")
require_relative ("../fish")

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new("Fred")
  end


  def test_fish_has_name
    expected = "Fred"
    actual = @fish.name

    assert_equal(expected, actual)

  end
end
