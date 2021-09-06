require "./menu"

class Food < Menu
  attr_accessor :calorie
  def initialize(name:,price:,calorie:)
    super(name:name,price:price)
    self.calorie = calorie
  end

  def info
    return "#{self.name} Rp#{self.price} (#{self.calorie}kcal)"
  end

  def calorie_info
    return "#{self.name} berkalori senilai #{calorie}kcal"
  end

end