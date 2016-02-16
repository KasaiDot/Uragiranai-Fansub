class Link < ActiveRecord::Base
  attr_accessible :nep, :url, :name
  belongs_to :projet

 end
