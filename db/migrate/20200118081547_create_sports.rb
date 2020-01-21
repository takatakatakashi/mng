class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
