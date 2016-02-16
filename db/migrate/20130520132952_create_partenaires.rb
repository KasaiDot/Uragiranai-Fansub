class CreatePartenaires < ActiveRecord::Migration
  def change
    create_table :partenaires do |t|
      t.string :name
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
