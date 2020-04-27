class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :background_img, :parent
  has_many :icons
end
