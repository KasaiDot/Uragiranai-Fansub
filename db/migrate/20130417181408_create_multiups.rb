class CreateMultiups < ActiveRecord::Migration
  def change
    create_table :multiups do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
