class IconSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :board_id, :bodies
  has_many :bodies
end
