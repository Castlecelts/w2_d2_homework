class Bear

  attr_reader :name, :type, :stomach_contents
  # attr_accessor :river

  def initialize (name, type)
    @name = name
    @type = type
    @stomach_contents = []
    # @river = river
  end


  def eat_fish (fish, river)
    @stomach_contents << fish
    for x in fish
      @fish_population.remove_fish(x)
    end

  end







end
