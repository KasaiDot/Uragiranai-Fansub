class CreateJhebergs < ActiveRecord::Migration
  def change
    create_table :jhebergs do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
