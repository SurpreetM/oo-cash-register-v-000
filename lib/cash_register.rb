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
    discount = @discount.to_i
    binding.pry
    @total = @total * discount
    @total
  end

end
