class CashRegister
  attr_accessor :total, :discount, :items, :pricelist
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
    @pricelist=[]
  end

  def add_item(item, price,quantity=1)

  @total=price*quantity+@total
   quantity.time do
      @items<<item
    end
  end
  @pricelist<<price*quantity

end

def apply_discount
  if self.discount==0
    "There is no discount to apply."
  else @total=@total*(1-discount/100.0)
    "After the discount, the total comes to $#{@total.to_i}."
end
end
def items
 @items
end

def void_last_transaction
  #find the last item's price and subtract it
@total=@total-@pricelist[pricelist.size-1]
end



end
