class BodySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :body_type, :icon_id
  link :custom_url do |object|
    "#{object.get_image_url}"
  end 
end 
