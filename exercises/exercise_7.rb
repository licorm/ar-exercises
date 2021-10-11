require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {in: [40, 200], integer: true}
  validates_associated :store
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {integer: true, greater_than: 0}
end

puts "Store name?"
storeName = gets.chomp

@store7 = Store.create(name: storeName)
puts @store7.errors.messages


