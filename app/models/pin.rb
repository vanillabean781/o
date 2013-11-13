class Pin < ActiveRecord::Base
  	attr_accessible :description, :image, :image_remote_url, :collection_id


  	validates :description, presence: true
  	validates :user_id, presence: true
  	has_attached_file :image, styles: { medium: "320x240>"}  #to do a fixed size use get :medium => "320x240>"
	
  	validates_attachment :image, presence: true,
  								content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  								size: { less_than: 5.megabytes }


  	belongs_to :user
  	belongs_to :collection

    def image_remote_url=(url_value)
      self.image = URI.parse(url_value) unless url_value.blank?
      super 
    end


end
