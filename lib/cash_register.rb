require 'pry'

class CashRegister
  attr_accessor :total, :discount

  @@array_of_all_items = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @@array_of_all_items << title
    self.total += price * quantity
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      @total = total - (total * (discount * 0.01))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def items
    @@array_of_all_items
  end
end

# cash_register_with_discount = CashRegister.new(20)
# cash_register_with_discount.add_item("macbook air", 1000)
# cash_register_with_discount.apply_discount
#
# binding.pry
