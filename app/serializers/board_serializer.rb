class BoardSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :title, :background_img, :parent, :id, :user_id
  has_many :icons
  link :custom_url do |object|
    "#{object.get_image_url}"
  end 
end
