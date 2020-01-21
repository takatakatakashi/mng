class CreateLoves < ActiveRecord::Migration[5.2]
  def change
    create_table :loves do |t|
      t.string :name
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
