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
    if @discount != 0
      @total = total - total * @discount/100
      return "After the discount, the total comes to $#{total}."
    else return "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total - add_item.last
  end

end
