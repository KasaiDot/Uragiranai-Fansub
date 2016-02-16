class Forced < ActiveRecord::Base
  attr_accessible :content, :image, :length, :redim, :title, :visible, :user_id, :news_id, :link

  belongs_to :user
  belongs_to :news

  validates :user_id, presence: true
  validates :content, presence: true
  validates :title, presence: true  
  mount_uploader :image, ImageUploader
  def to_param
    "#{id}-#{title.parameterize}"
  end

end
