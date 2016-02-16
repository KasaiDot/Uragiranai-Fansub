class AddDiffusionandnameToProgressions < ActiveRecord::Migration
  def change
    add_column :progressions, :diffusion, :string
    add_column :progressions, :name, :string
  end
end
