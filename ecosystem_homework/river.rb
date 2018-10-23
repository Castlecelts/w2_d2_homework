class River

  attr_reader :name, :fish_population

  def initialize (name, fish_population)
    @name = name
    @fish_population = fish_population

  end

  # def fish_population
  #   fish_population = []
  #   return fish_population
  # end

    def add_fish (fish)
      @fish_population << fish

    end


    def remove_fish (fish)
      @fish_population.delete(fish)

    end

end
