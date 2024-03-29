def pet_shop_name(store_name)
  return store_name[:name]
end

def total_cash(store_total_cash)
  return store_total_cash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money_added)
  pet_shop[:admin][:total_cash] += money_added
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].size
end

def pets_by_breed(pet_shop, breed_type)
  breed_total = []
  for each_pet in pet_shop[:pets]
    breed_total << each_pet if each_pet[:breed] == breed_type
  end
return breed_total
end

def find_pet_by_name(pet_shop, search_name_of_pet)
  for pet_name in pet_shop[:pets]
    return pet_name if search_name_of_pet == pet_name[:name]
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet_to_add)
  pet_shop[:pets] << new_pet_to_add
end

def customer_cash(customer_cash)
  return customer_cash[:cash]
end

def remove_customer_cash(customer, cash_decrease)
  return customer[:cash] -= cash_decrease
end

def customer_pet_count(count)
  return count[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
    return true if customer[:cash] >= new_pet[:price]
  else
    return false
end

def sell_pet_to_customer(pet_shop, pet, customer)

  if pet == nil
    return nil
  end

  if customer[:cash] < pet[:price]
    return nil
  end

  customer[:cash] >= pet[:price]
  customer[:cash] -= pet[:price]

  pet_shop[:pets].delete(pet)

  pet_shop[:admin][:total_cash] += pet[:price]
  pet_shop[:admin][:pets_sold] += 1

  customer[:pets].push(1)

end
