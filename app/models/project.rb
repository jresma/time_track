class Project < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5, allow_nil: true }
end
