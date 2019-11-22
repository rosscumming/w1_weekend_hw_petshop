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
