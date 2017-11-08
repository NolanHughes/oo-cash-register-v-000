require 'pry'

class CashRegister
  attr_accessor :total

  def initialize(discount = nil)
    @total = 0
  end

  def discount
    20
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    raise ArgumentError, "Too many arguments" if args.length > 1

    else
      @total = total - (total * (discount * 0.01))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end
end

# cash_register_with_discount = CashRegister.new
# cash_register_with_discount.add_item("macbook air", 1000)
# cash_register_with_discount.apply_discount
#
# binding.pry
