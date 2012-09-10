class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    return calories < 200
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    @flavor = flavor
    super(name, calories)
  end
  
  def delicious?
      flavor == "black licorice"
  end
end
