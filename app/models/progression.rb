class Progression < ActiveRecord::Base
  attr_accessible :episode, :image, :other, :traduction, :qctext, :qcfinal, :name, :diffusion
  mount_uploader :image, ImageUploader
end
