class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :size
      t.integer :max_cargo
      t.integer :max_distance

      t.timestamps
    end
  end
end
