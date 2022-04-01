class CreateJoinAlgorithmsConstants < ActiveRecord::Migration[6.1]
  def change
        create_table :join_algorithms_constants do |t|
          t.integer :algorithm_id
          t.integer :constant_id
    end
  end
end
