class Player

  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end



end
