class CreateMagics < ActiveRecord::Migration[5.0]
  def change
    create_table :magics do |t|

      t.timestamps
    end
  end
end