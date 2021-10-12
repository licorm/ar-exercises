require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee
  #associations
  belongs_to :store

  #validation exercise 7
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {in: [40, 200], integer: true}
  validates_associated :store

  #callback exercise 8
  before_create :password_set

  private
  def password_set
    word = (0...8).map { (65 + rand(26)).chr }.join
    self.password = word
  end

end

@employee = @store1.employees.create(first_name: "Lisa", last_name: "Cormier", hourly_rate: 65)
puts @employee.password
