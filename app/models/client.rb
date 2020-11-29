class Client < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :admins, through: :events
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
