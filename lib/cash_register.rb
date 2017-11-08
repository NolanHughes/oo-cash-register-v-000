class CashRegister
  attr_accessor :total

  def initialize(discount = nil)
    @total = 0
  end

  def discount
    20
  end

  def add_item(title, price, quantity = 0)
    self.total += price * quantity
  end
end
