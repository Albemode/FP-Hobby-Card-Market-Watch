class CreateYugiohs < ActiveRecord::Migration[5.0]
  def change
    create_table :yugiohs do |t|

      t.timestamps
    end
  end
end
