class User < ApplicationRecord
    has_many :boards
    has_secure_password

    validates :username, uniqueness: true
end
