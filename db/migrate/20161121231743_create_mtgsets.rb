class CreateMtgsets < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgsets do |t|
      t.references  :code
      t.string :name
      t.integer  :gatherer_code
      t.integer  :old_code
      t.integer  :magic_cards_info_code
      t.date  :release_date
      t.boolean :border
      t.references  :type
      t.boolean :block
      t.boolean :online_only
      t.string  :booster
      t.interger :mkm_id
      t.string  :mkm_name

      t.timestamps
    end
  end
end
