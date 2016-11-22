class CreateDragonballs < ActiveRecord::Migration[5.0]
  def change
    create_table :dragonballs do |t|

      t.timestamps
    end
  end
end
