class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true, presence: true
end
