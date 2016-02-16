class Partenaire < ActiveRecord::Base
  attr_accessible :image, :name, :url, :partype
  mount_uploader :image, ImageUploader
end
