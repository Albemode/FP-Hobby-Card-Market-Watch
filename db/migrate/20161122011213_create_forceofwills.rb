class CreateForceofwills < ActiveRecord::Migration[5.0]
  def change
    create_table :forceofwills do |t|
      t.string  :set_name
      t.string :booster_set_name
      t.float :price
      t.boolean :attribute
      t.decimal  :total_cost


      t.timestamps
    end
  end
end
