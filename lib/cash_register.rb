require 'pry'
class CashRegister

  attr_accessor :discount, :total, :last_transaction, :all_items

  def initialize(discount = 0)

    @discount = discount
    @total = 0
    @all_items = []

  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

    quantity.times do
      @all_items << title
    end

    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
    #self.total = self.total * ((100.0 - discount)/100)
    @total = ( @total * ( 1.0 - (@discount/100.0) ).to_f ).to_i

    "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
    end
  end

  def items
    self.all_items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
