class CreateMtglegalities < ActiveRecord::Migration[5.0]
  def change
    create_table :mtglegalities do |t|
      t.boolean :format 
      t.boolean :legality

      t.timestamps
    end
  end
end
