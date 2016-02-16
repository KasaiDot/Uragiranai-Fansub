class CreateImgups < ActiveRecord::Migration
  def change
    create_table :imgups do |t|
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
