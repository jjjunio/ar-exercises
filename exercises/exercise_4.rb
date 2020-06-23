require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store_surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  womens_apparel: true,
  )

  store_whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  )

  store_yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true,
  )

  @mens_stores = Store.where(mens_apparel: true)
  puts "----- Men's Stores -----"
  @mens_stores.each do |store|
    puts "Store Name: #{store.name}"
    puts "Annual Revenue: #{store.annual_revenue}"
  end

  @womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
  puts "----- Women's Stores -----"
  @womens_stores.each do |store|
    puts "Store Name: #{store.name}"
    puts "Annual Revenue: #{store.annual_revenue}"
  end