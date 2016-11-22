class CreateMtglegalities < ActiveRecord::Migration[5.0]
  def change
    create_table :mtglegalities do |t|
      format 
      legality

      t.timestamps
    end
  end
end
