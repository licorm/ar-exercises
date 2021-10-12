require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store
  #associations
  has_many :employees

  #validations exercise 7
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {integer: true, greater_than: 0}
end

class Employee
  #associations
  belongs_to :store

  #validation exercise 7
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {in: [40, 200], integer: true}
  validates_associated :store

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

