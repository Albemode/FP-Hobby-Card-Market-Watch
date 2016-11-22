class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :brand
      t.string  :booster_set_name

      t.timestamps
    end
  end
end
