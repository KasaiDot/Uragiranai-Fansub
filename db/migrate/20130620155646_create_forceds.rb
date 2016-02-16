class CreateForceds < ActiveRecord::Migration
  def change
    create_table :forceds do |t|
      t.string :title
      t.text :content
      t.boolean :visible
      t.string :image
      t.boolean :redim
      t.integer :length

      t.timestamps
    end
  end
end
