class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :visites

      t.timestamps
    end
  end
end
