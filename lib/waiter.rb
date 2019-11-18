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
  
  initialize(waiter, customer, total, tip)
  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select { |meal| meal.waiter == self }
  end

  def best_tipper
    Meal.all.sort_by { |meal| meal.tip }
  end
end

      it "initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip" do
        howard = Customer.new("Howard", 30)
        terrance = Waiter.new("Terrance", 1)
        terrance.new_meal(howard, 10, 1)
        
        expect(Meal.all.first.waiter).to eq(terrance)
        expect(Meal.all.first.customer).to eq(howard)
      end
    end