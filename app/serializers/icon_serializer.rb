class IconSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
  has_many :bodies
end
