class CreateProjets < ActiveRecord::Migration
  def change
    create_table :projets do |t|
      t.string :title
      t.text :infos
      t.text :synopsis
      t.text :ost
      t.boolean :finished
      t.boolean :public
      t.timestamps
    end
  end
end
