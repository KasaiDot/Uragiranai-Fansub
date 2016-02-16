class Staff < ActiveRecord::Base
  attr_accessible :avatar, :postes, :presentation, :pseudo
  
   mount_uploader :avatar, ImageUploader
end
