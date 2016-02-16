class Multiup < ActiveRecord::Base
  attr_accessible :name, :url
  belongs_to :projet
end
