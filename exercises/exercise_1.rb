require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# class Store < ApplicationRecord
# end

class Store 
  has_many :employees
end

class Employee 
  belongs_to :store
end

store_burnaby = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true,
  )

store_richmond = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  womens_apparel: true,
  )

store_gastown = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  )

puts Store.count

