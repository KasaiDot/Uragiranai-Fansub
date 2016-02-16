class AddRedimToNews < ActiveRecord::Migration
  def change
    add_column :news, :redim, :boolean
  end
end
