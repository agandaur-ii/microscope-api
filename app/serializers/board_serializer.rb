class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :background_img, :parent, :icons
  has_many :icons
end
