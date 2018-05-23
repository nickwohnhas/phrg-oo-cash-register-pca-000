require 'pry'
class CashRegister
attr_accessor :total, :prices
attr_writer :items

def items
@items

end

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def discount
    @discount
  end

  def add_item(title,price,quantity = 1)

    self.total += price * quantity
    quantity.times do
    self.items << title
    end
    self.prices << price
  end

  def apply_discount
    if @discount > 0
     @total = @total.to_f * (1.0 - (@discount.to_f/100.0))
     return "After the discount, the total comes to $#{@total.to_i}."
   else
    return "There is no discount to apply."
   end
  end

  def void_last_transaction
    self.total -= self.prices[-1]

  end

end
