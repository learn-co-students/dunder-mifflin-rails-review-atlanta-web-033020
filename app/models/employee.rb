class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, :presence => true, :uniqueness => true
    validates :title, :presence  => true, :uniqueness => true

    def to_s 
        "#{self.first_name} #{self.last_name}"
    end

end
