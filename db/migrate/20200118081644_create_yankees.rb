class CreateYankees < ActiveRecord::Migration[5.2]
  def change
    create_table :yankees do |t|
      t.string :name
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
