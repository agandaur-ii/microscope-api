class BodySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :body_type, :content
  link :custom_url do |object|
    "#{object.get_image_url}"
  end 
end 
