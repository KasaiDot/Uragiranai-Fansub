class AddLinkToForceds < ActiveRecord::Migration
  def change
    add_column :forceds, :link, :boolean
  end
end
