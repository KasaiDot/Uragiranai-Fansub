class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :pseudo
      t.string :postes
      t.text :presentation
      t.string :avatar

      t.timestamps
    end
  end
end
