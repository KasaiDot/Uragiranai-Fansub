class CreateProgressions < ActiveRecord::Migration
  def change
    create_table :progressions do |t|
      t.string :image
      t.integer :episode
      t.integer :traduction
      t.integer :qcfinal
      t.string :other

      t.timestamps
    end
  end
end
