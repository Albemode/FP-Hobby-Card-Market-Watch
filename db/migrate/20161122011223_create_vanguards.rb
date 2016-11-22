class CreateVanguards < ActiveRecord::Migration[5.0]
  def change
    create_table :vanguards do |t|
      t.string  :card_name
      t.string  :print_tag
      t.string  :rarity
      t.string  :booster_set_name
      t.string  :clan_booster_name
      t.string  :set_name
      t.string  :deck_name
      t.string  :collection
      t.integer :unit
      t.integer :grade
      t.integer :card_number
      t.boolean :skill_icon
      t.boolean :trigger
      t.string  :power
      t.string  :nation
      t.string  :clan
      t.string  :race
      t.string  :shield
      t.float :price

      t.timestamps
    end
  end
end
