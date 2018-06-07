class CashRegister

  attr_reader :discount, :price, :title

  def initialize(total=0, discount=0)
    @total = total
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
  end

  def apply_discount
    @total -= @discount
    return "After the discount, the total comes to #{total}."
  end


end
