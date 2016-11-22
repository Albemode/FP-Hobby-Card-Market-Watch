class CreatePricewalkthroughs < ActiveRecord::Migration[5.0]
  def change
    create_table :pricewalkthroughs do |t|

      t.timestamps
    end
  end
end
