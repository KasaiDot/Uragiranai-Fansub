class News < ActiveRecord::Base
  attr_accessible :content, :forced, :title, :public, :image, :length, :programmation, :redim, :user_id
  
  belongs_to :user
  has_many :forceds

  validates :user_id, presence: true 
  validates :content, presence: true
  validates :title, presence: true
  validates :length, presence: true
  validates :programmation, presence: true
  validates_format_of :programmation, :with => /\A(?<year>\d{4})-(?<month>0[1-9]|1[0-2])-(?<day>0[1-9]|0[1-9]|1[0-9]|2[0-9]|3[0-1])\ (?<heures>0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]):(?<minutes>0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]):(?<secondes>0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])\ (?<UTC+>[+])(?<UTC+x>\d{4})\z/
  mount_uploader :image, ImageUploader
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
