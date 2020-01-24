class Manga < ApplicationRecord
  belongs_to :tag
  mount_uploader :image, ImageUploader
  validates :text, presence: true
end
