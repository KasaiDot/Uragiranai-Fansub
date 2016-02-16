class AddPartypeToPartenaires < ActiveRecord::Migration
  def change
    add_column :partenaires, :partype, :boolean
  end
end
