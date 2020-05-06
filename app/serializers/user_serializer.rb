class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :username, :id
  has_many :boards
end
