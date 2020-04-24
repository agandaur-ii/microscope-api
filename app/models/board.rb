class Board < ApplicationRecord
  belongs_to :user
  has_many :icons

  has_ancestry
end
