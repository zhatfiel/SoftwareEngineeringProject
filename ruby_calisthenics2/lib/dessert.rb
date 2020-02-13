class Dessert
  # add code for setters and getters
  attr_accessor :name, :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    true if self.calories < 200
  end
  def delicious?
    # your code here
    return false if self.name.match?(/licorice/)
    true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    @flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5
  end
end
