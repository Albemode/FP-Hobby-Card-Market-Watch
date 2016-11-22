class CreateForceofwills < ActiveRecord::Migration[5.0]
  def change
    create_table :forceofwills do |t|

      t.timestamps
    end
  end
end
