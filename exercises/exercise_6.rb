require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Jemwell", last_name: "Bigcas", hourly_rate: 60)
@store1.employees.create(first_name: "Kenneth", last_name: "Bigcas", hourly_rate: 60)
@store1.employees.create(first_name: "King", last_name: "Bigcas", hourly_rate: 60)
@store2.employees.create(first_name: "Kervin", last_name: "Bigcas", hourly_rate: 60)
@store2.employees.create(first_name: "Kyle", last_name: "Bigcas", hourly_rate: 60)
@store2.employees.create(first_name: "Gino", last_name: "Bigcas", hourly_rate: 60)