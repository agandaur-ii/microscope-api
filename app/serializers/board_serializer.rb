class BoardSerializer
  include Rails.application.routes.url_helpers

  include FastJsonapi::ObjectSerializer
  attributes :title, :background_img, :parent, :icons, :id, :user_id
  has_many :icons
end
