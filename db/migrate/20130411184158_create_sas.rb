class CreateSas < ActiveRecord::Migration
  def change
    create_table :sas do |t|
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
