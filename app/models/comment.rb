class Comment < ActiveRecord::Base
  attr_accessible :content, :news_id, :user_id
  
  belongs_to :user	

  validates :user_id, presence: true
  validates :content, presence: true
  validates :news_id, presence: true
end
