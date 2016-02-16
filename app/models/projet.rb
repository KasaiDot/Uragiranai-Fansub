class Projet < ActiveRecord::Base
  attr_accessible :download, :infos, :ost, :realisation, :synopsis, :title, :finished, :public, :image, :links_attributes, :jhebergs_attributes, :multiups_attributes, :torrents_attributes
  validates :title, presence: true
  validates :infos, presence: true
  validates :synopsis, presence: true
  
  has_many :links
  accepts_nested_attributes_for :links, allow_destroy: true
  has_many :jhebergs
  accepts_nested_attributes_for :jhebergs, allow_destroy: true
  has_many :multiups
  accepts_nested_attributes_for :multiups, allow_destroy: true
  has_many :torrents
  accepts_nested_attributes_for :torrents, allow_destroy: true
  
  mount_uploader :image, ImageUploader
  #mount_uploader :anime, AnimeUploader
  def to_param
    "#{id}-#{title.parameterize}"
  end

end
