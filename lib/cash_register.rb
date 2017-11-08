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
    #get only specific items in array
    #multiple number of items by their quantity
    @@array_of_all_items
  end
end

new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)

binding.pry
