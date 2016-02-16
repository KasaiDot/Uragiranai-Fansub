class AddProgrammationToNews < ActiveRecord::Migration
  def change
    add_column :news, :programmation, :string
  end
end
