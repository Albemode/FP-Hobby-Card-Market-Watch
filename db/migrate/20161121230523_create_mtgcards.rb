class CreateMtgcards < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgcards do |t|
      name :string
      t.interger :multiverse_id
      layout
      names :string
      mana_cost
      cmc
      colors
      t.references  :type
      supertypes
      subtypes
      rarity
      text
      flavor
      artist
      number
      power
      toughness
      loyalty
      variations
      watermark
      border
      timeshifted
      hand
      life
      reserved
      release_date
      starter
      rulings
      foreign_names
      printings
      original_text
      t.references :original_type
      legalities
      source
      image_url
      set
      set_name
      id

      t.timestamps
    end
  end
end
