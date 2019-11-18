class Waiter
  attr_accessor :name, :years
  @@all = []
  def initialize(name, years)
    @name = name
    @years = years
    self.class.all << self
  end

  def self.all
    @@all
  end

  def meals
    Meal.all.select { |meal| meal.waiter == self }
  end

  def best_tipper
    return Meal.all.sort_by { |meal| meal.tip }.last
  end
end