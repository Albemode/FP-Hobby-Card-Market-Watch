class CreateMtgrulings < ActiveRecord::Migration[5.0]
  def change
    create_table :mtgrulings do |t|
      date
      text

      t.timestamps
    end
  end
end
