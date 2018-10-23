class Bear

  attr_reader :name, :type, :stomach_contents
  # attr_accessor :river

  def initialize (name, type)
    @name = name
    @type = type
    @stomach_contents = []
    # @river = river
  end


  def eat_fish (fish)
    # fish_in_limbo = @stomach_content.pop
    @stomach_contents << fish
    # for x in fish
    #   @fish_population.remove_fish(x)
    # end
  end

#   bus spec.rb
#     @stop1.add_to_queue(@passenger1)
#     @bus.pick_up_from_stop(@stop1)
#
# bus.rb
# def pick_up_from_stop(stop)
#   for person in stop.queue()
#     pick_up(person)
#   end
#   stop.clear_queue()
# end
#
# bus_stop.rb
# def add_to_queue(person)
#   @queue.push(person)
# end








end
