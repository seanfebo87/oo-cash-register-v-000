class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @items << title
  end
  def apply_discount
    if @discount > 0 
    discount = (@total*@discount)/100
    @total -= discount 
    return "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  def items
    @items.uniq
  end
    
end