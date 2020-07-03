class IconSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :board_id, :bodies
  attributes :body_url do |object|
    object.bodies.first.get_image_url
  end
  has_many :bodies
end
