class CreateMtgsets < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgsets do |t|
      code
      name
      gatherer_code
      old_code
      magic_cards_info_code
      release_date
      border
      type
      block
      online_only
      booster
      mkm_id
      mkm_name

      t.timestamps
    end
  end
end
