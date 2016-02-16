class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :nep
      t.belongs_to :projet

      t.timestamps
    end
    add_index :links, :projet_id
  end
end
