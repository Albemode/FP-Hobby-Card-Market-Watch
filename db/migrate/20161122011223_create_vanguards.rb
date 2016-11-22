class CreateVanguards < ActiveRecord::Migration[5.0]
  def change
    create_table :vanguards do |t|

      t.timestamps
    end
  end
end
