class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :background_img
  has_many :icons
end
