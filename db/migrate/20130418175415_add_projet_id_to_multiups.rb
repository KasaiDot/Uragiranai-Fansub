class AddProjetIdToMultiups < ActiveRecord::Migration
  def change
    add_column :multiups, :projet_id, :integer
  end
end
