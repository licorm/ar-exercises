require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "total stores revenue: $#{Store.sum(:annual_revenue)}"
puts "average total store revenue: $#{Store.average(:annual_revenue)}"
puts "number of stores generating more that $1M in revenue: #{Store.where("annual_revenue >= ?", 1000000).count}"
