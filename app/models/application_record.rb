class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :text, presence: true
end
