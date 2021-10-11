require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Lisa", last_name: "C", hourly_rate: 50)

@store1.employees.create(first_name: "Rene", last_name: "M", hourly_rate: 50)
@store1.employees.create(first_name: "Megan", last_name: "J", hourly_rate: 55)

@store1.employees.create(first_name: "Jula", last_name: "J", hourly_rate: 45)

@store2.employees.create(first_name: "Lori", last_name: "Burke", hourly_rate: 70)

@store2.employees.create(first_name: "Thea", last_name: "M", hourly_rate: 35)
@store2.employees.create(first_name: "Jocelyn", last_name: "Yet", hourly_rate: 65)
@store2.employees.create(first_name: "Natalie", last_name: "s", hourly_rate: 45)

