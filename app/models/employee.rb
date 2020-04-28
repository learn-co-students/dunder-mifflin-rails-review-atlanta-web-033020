class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, :title, uniqueness: true

  def name
    first_name + " " + last_name
  end
end
