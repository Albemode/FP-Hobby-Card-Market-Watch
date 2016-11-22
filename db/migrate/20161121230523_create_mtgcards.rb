class CreateMtgcards < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgcards do |t|
      t.string  :name
      t.interger :multiverse_id
      t.boolean :layout
      t.string  :names
      t.decimal  :mana_cost
      t.string  :cmc
      t.boolean :colors
      t.references  :type
      t.string  :supertypes
      t.string  :subtypes
      t.string  :rarity
      t.text  :text
      t.string  :flavor
      t.string  :artist
      t.integer  :number
      t.string  :power
      t.string  :toughness
      t.string  :loyalty
      t.string  :variations
      t.string  :watermark
      t.string  :border
      t.string  :timeshifted
      t.string  :hand
      t.string   :life
      t.string  :reserved
      t.date  :release_date
      t.string  :starter
      t.boolean :rulings
      t.string  :foreign_names
      t.boolean :printings
      t.text  :original_text
      t.references :original_type
      t.string  :legalities
      t.references  :source
      t.references  :image_url
      t.string  :set
      t.string  :set_name
      t.interger :id

      t.timestamps
    end
  end
end
