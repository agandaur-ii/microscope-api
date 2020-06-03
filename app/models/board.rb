class Board < ApplicationRecord
  include Rails.application.routes.url_helpers

  belongs_to :user
  has_many :icons, dependent: :destroy

  has_ancestry
  has_one_attached :image #maybe change to image?

  def get_image_url    
    url_for(self.image)  
  end
end 
 

