class Tag < ApplicationRecord
  has_many :mangas
  belongs_to :user
end
