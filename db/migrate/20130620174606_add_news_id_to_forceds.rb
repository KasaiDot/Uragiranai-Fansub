class AddNewsIdToForceds < ActiveRecord::Migration
  def change
    add_column :forceds, :news_id, :integer
  end
end
