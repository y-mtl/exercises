class Player
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def dead?
    @life == 0
  end

  def reduce_life
    @life -= 1
  end

  def summary
    "#{name}: ♡ x #{@life} remaining"
  end
end
