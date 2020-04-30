class User < ApplicationRecord
    has_many :boards, dependent: :destroy
    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
    validates :first_name, :last_name, presence: true
end
