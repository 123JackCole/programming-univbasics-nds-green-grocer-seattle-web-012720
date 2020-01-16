def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.count do
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1
  end
  return nil
end

# adds :count to the item hash
def item_with_count(item_info)
  {
    item: item_info[:item],
    price: item_info[:price],
    clearance: item_info[:clearance],
    count: 0
  }
end

def consolidate_cart(cart)
  
  new_cart = []
  
  outer_index = 0
  while outer_index < cart.count do
    
    # if the item is not in the new cart, it adds the item using item_with_count
    unless new_cart.include?(cart[outer_index][:item])
      new_cart << item_with_count(cart[outer_index])
    end
    
    # if the item is in the new cart it increments the count
    if new_cart.include?(item_with_count(cart[outer_index]))
      inner_index = 0
      
      # finds the correct location in the new_cart array to increment
      while inner_index < new_cart.count
        if new_cart[inner_index][:item] == cart[outer_index][:item]
          new_cart[inner_index][:count] += 1
        end
        inner_index += 1
      end

    end
    
    outer_index += 1
  end
  new_cart
end

def apply_coupons(cart, coupons)
  index = 0
  while index < coupons.count
    cart_item = 
  
  
    
    
  
end

def apply_clearance(cart)
  index = 0
  while index < cart.count
    if cart[index][:clearance] == true
      cart[index][:price] *= 0.8
    end
    index += 1
  end
  cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
