class CreateDragonballs < ActiveRecord::Migration[5.0]
  def change
    create_table :dragonballs do |t|
      t.string  :card_name
      t.string  :booster_set_name
      t.string  :set_name
      t.float :price

      t.timestamps
    end
  end
end
