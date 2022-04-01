class CreateJoinAlgorithmsOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :join_algorithms_operations do |t|
      t.integer :algorithm_id
      t.integer :operation_id
    end
  end
end
