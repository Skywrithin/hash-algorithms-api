class CreateConstants < ActiveRecord::Migration[6.1]
  def change
    create_table :constants do |t|
      t.string :root_value
      t.string :value
      t.string :binary_value
      t.string :hex_value
    end
  end
end

