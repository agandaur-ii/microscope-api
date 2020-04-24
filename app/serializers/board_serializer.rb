class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes
  has_many :icons
end
