class CreateMtgchangelogs < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgchangelogs do |t|
      version
      release_date
      details

      t.timestamps
    end
  end
end
