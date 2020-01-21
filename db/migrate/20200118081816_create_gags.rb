class CreateGags < ActiveRecord::Migration[5.2]
  def change
    create_table :gags do |t|
      t.string :name
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
