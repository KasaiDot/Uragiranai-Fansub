class AddLengthToNews < ActiveRecord::Migration
  def change
    add_column :news, :length, :integer
  end
end
