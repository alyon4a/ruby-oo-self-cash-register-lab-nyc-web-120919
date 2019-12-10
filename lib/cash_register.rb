require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :items
  
  def initialize (employee_discount = 0)
    @total = 0.0
    @discount = employee_discount
    @items = []
  end
  
  def add_item (item_name, price, qty = 1)
    @total += price * qty
    puts "NEW ITEM" 
    puts item_name
    puts qty
    qty.times {items << item_name}
  end
  
  def apply_discount 
    if @discount == 0 then return "There is no discount to apply." end
    discount = @discount * @total / 100
    @total -= discount
    "After the discount, the total comes to $#{@total.round}."
  end
  
end