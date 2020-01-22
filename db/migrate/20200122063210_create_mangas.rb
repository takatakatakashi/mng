class CreateMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :mangas do |t|
      t.string :text
      t.string :name
      t.text :image
      t.references :tag
      t.timestamps
    end
  end
end
