require 'pry'
class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)

    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if self.discount != 0
    self.total = self.total * ((100.0 - discount)/100)
    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
  end

end
