class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
  has_many :boards
end
