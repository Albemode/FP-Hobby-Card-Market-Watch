class CreateMagics < ActiveRecord::Migration[5.0]
  def change
    create_table :magics do |t|
      t.string  :card_name
      t.string  :print_tag
      t.string  :rarity
      t.string :booster_set_name
      t.string  :set_name
      t.string :special
      t.string  :collection
      t.float :price

      t.timestamps
    end
  end
end
