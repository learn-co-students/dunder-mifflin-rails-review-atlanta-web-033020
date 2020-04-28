class Dog < ApplicationRecord
  has_many :employees

  def self.sorted
    Dog.all.sort_by { |dog| -dog.employees.length }
  end
end
