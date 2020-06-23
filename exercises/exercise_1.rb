require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# class Store < ApplicationRecord
# end
class Store 
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
end
class Employee 
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, :inclusion => 40..60
end

#   
# end
# class Employee 
#   belongs_to :store
#   validates :first_name, :last_name, :store_id, presence: true
#   validates :hourly_rate, :inclusion => 40..60
# end

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

