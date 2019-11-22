def pet_shop_name(name)
  return name[:name]
end

def total_cash(sum)
  sum[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money_added)
  pet_shop[:admin][:total_cash] += money_added
end
