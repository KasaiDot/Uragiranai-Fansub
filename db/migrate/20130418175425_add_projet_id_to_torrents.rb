class AddProjetIdToTorrents < ActiveRecord::Migration
  def change
    add_column :torrents, :projet_id, :integer
  end
end
