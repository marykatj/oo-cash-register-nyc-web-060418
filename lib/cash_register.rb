class CashRegister

  attr_reader :discount, :price, :title
  attr_writer :total

  @@items = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items << self
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
  end

  def apply_discount
    @total = total - total * @discount/100
    return "After the discount, the total comes to $#{total}."
  end

  def items
    @@items
  end

end
