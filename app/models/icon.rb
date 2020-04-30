class Icon < ApplicationRecord
  belongs_to :board
  has_many :bodies, dependent: :destroy

end
