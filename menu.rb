require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:,price:)
    self.name = name
    self.price = price
  end

  def info
    puts "#{self.name} Rp#{self.price}"
  end

  def get_total_price(count)
      total_price = self.price * count
      if count >= 3
        total_price -= 1000
      end
      if count >= 1 && Menu.discount_day?
        total_price -= 2000
      end

    return total_price
  end

  def Menu.discount_day?
    today = Date.today
    return today.friday?
  end
end