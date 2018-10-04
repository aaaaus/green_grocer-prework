require "pry"

def consolidate_cart(cart)
  hash = {}
  cart.each do | element |
    element.each do | name , values |
      if hash.has_key?(name) == false
        hash[name] = values
        hash[name][:count] = 1
      else
        hash[name][:count] += 1
      end
    end
  end
  return hash
end

def apply_coupons(cart, coupons)
  
  # cart = {"AVOCADO"=>{:price=>3.0, :clearance=>true, :count=>2}}
  # coupons = [{:item=>"AVOCADO", :num=>2, :cost=>5.0}]

  final_cart = {}
  
  cart.each do | food , food_info |
    coupons.each do | coupon_info |
      if food == coupon_info[:item] && food_info[:count] >= coupon_info[:num]
        
  
  
  
  
  

  # result = {}
  # # code here#
  # cart.each do |food, info|
  #   coupons.each do |coupon|
  #     if food == coupon[:item] && info[:count] >= coupon[:num]
  #       info[:count] =  info[:count] - coupon[:num]
  #       if result["#{food} W/COUPON"]
  #         result["#{food} W/COUPON"][:count] += 1
  #       else
  #         result["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => info[:clearance], :count => 1}
  #       end
  #     end
  #   end
  #   result[food] = info
  # end
  # result

  #   coupons.each do | coupons_hash |
  #     coupon_item = coupons_hash[:item] 
  #     new_coupon_hash = {
  #       :price => coupons_hash[:cost],
  #       :clearance => true,
  #       :count => coupons_hash[:num]
  #     }
    
  #   if cart.key?(coupon_item)
  #     new_coupon_hash[:clearance] = cart[coupon_item][:clearance]
  #     if cart[coupon_item][:count] >= new_coupon_hash[:count]
  #       new_coupon_hash[:count] = (cart[coupon_item][:count] / new_coupon_hash[:count]).floor
  #       cart[coupon_item][:count] = coupons_hash[:num] % cart[coupon_item][:count]
  #     end
  #     cart[coupon_item + " W/COUPON"] = new_coupon_hash
  #   end
  # end
  # return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
