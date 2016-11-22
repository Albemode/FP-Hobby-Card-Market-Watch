class CreateBuddyfights < ActiveRecord::Migration[5.0]
  def change
    create_table :buddyfights do |t|
      t.string :booster_set_name
      t.string  :rarity
      t.float :price

      t.timestamps
    end
  end
end
