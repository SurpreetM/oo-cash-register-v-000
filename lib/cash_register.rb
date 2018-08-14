require 'pry'
class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)

    @discount = discount
    binding.pry
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    discount = 1 - @discount.to_i/100

    @total = @total * discount
    @total
  end

end
