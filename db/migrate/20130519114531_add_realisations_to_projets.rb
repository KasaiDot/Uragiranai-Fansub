class AddRealisationsToProjets < ActiveRecord::Migration
  def change
    add_column :projets, :realisation, :text
  end
end
