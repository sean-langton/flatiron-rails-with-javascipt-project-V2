class CreateFleets < ActiveRecord::Migration[5.2]
  def change
    create_table :fleets do |t|
      t.string :name
      t.references :league
      t.references :user

      t.timestamps
    end
  end
end
