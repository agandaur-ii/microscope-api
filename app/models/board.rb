class Board < ApplicationRecord
  belongs_to :user
  has_many :icons, dependent: :destroy

  has_ancestry
end
