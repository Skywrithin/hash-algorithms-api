class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :message
      t.string :digest
      t.integer :algorithm_id
    end
  end
end
