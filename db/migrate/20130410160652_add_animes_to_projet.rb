class AddAnimesToProjet < ActiveRecord::Migration
  def change
    add_column :projets, :anime, :string
  end
end
