class CreateAlgorithms < ActiveRecord::Migration[6.1]
  def change
    create_table :algorithms do |t|
      t.string :name
      t.integer :output_length
      t.integer :block_length
      t.integer :word_length
    end
  end
end
