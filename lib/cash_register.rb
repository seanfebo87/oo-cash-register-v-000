class CashRegister
  attr_accessor :total, :discount :quantity
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end
  def add_item(title, price, quantity = 0)
    @total += price 
    @quantity += quantity
  end
    
end