class Collection < ActiveRecord::Base
  attr_accessible :description, :collection_name
	validates :collection_name, presence: true

  has_many :pins
  belongs_to :user
  
end
