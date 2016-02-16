class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :username, :redacteur, :avatar, :avatar_cache, :remove_avatar
  # attr_accessible :title, :body
  
  has_many :news
  has_many :comments
  has_many :forceds
  
  validates :username, presence: true
  validates_integrity_of  :avatar
  validates_processing_of :avatar
   
end
