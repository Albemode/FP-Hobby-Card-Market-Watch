class CreatePricewalkthroughs < ActiveRecord::Migration[5.0]
  def change
    create_table :pricewalkthroughs do |t|
      t.string  :product_line
      t.string  :rarity
      t.string  :set_name
      t.string  :number
      t.float :price
      t.float :market_price
      t.float :price_trend
      t.string  :listed_high
      t.string  :listed_mediam
      t.string  :listed_low

      t.timestamps
    end
  end
end
