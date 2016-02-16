class AddPublicToNews < ActiveRecord::Migration
  def change
    add_column :news, :public, :boolean
  end
end
