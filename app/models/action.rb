class Action < ApplicationRecord
  validates :text, presence: true
end
