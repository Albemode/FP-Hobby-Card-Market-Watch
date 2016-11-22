class CreateMtgchangelogs < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgchangelogs do |t|
      t.string  :version
      t.date  :release_date
      t.string  :details

      t.timestamps
    end
  end
end
