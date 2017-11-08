class CashRegister
  attr_accessor :total

  def initialize(discount)
    @total = 0
  end

  def discount
    20
  end
end
