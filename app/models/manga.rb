class Manga < ApplicationRecord
  belongs_to  :tag
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :text, presence: true
end
