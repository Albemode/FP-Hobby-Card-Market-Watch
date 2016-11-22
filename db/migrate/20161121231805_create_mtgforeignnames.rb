class CreateMtgforeignnames < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgforeignnames do |t|
      t.string  :language
      t.string  :name
      t.interger :multiverse_id

      t.timestamps
    end
  end
end
