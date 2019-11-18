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
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select { |meal| meal.waiter == self }
  end

  def best_tipper
    Meal.all.sort_by { |meal| meal.tip }
  end
end