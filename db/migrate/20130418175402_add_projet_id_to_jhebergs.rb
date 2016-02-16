class AddProjetIdToJhebergs < ActiveRecord::Migration
  def change
    add_column :jhebergs, :projet_id, :integer
  end
end
