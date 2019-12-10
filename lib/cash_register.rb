require 'pry'
class CashRegister
  
  attr_accessor :discount, :total
  def initialize (employee_discount = 0)
    @total = 0.0
    @discount = employee_discount
  end
  
  def add_item (item_name, price, qty = 1)
    @total += price * qty
  end
  
  def apply_discount 
    discount = @discount * @total / 100
    @total -= discount
    
  end
  
end