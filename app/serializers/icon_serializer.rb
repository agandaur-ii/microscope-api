class IconSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :bodies
  has_many :bodies
end
