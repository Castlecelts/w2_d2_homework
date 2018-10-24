class Bear

  attr_reader :name, :type, :stomach_contents
  # attr_accessor :river

  def initialize (name, type)
    @name = name
    @type = type
    @stomach_contents = []
    # @river = river
  end


  def eat_fish (river)
    # fish_in_limbo = @stomach_content.pop
    fish = river.remove_fish
    @stomach_contents << fish
    # for x in fish
    #   @fish_population.remove_fish(x)
    # end
  end


end

# do a simple function, then use it inside a more complex function.


# def eat(fish)
# @stomach_content << fish2
# end
#
# def take_fish_from_river(river)
#   fish = river.get_fish()
#   eat(fish)
# end
