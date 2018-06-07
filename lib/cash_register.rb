class CashRegister

  attr_reader :discount, :price, :title
  attr_writer :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    item_total += price*quantity
    @total += item_total
    @items << title
  end

  def apply_discount
    if @discount != 0
      @total = total - total * @discount/100
      return "After the discount, the total comes to $#{total}."
    else return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
