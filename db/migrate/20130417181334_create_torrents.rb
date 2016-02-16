class CreateTorrents < ActiveRecord::Migration
  def change
    create_table :torrents do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
