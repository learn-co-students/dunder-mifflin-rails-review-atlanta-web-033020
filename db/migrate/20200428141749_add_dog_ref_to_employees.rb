class AddDogRefToEmployees < ActiveRecord::Migration[5.1]
  def change
    change_table :employees do |t|
      t.integer :dog_id
    end
  end
end
