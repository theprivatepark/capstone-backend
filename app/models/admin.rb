class Admin < ApplicationRecord
  has_secure_password

  has_many :events
  has_many :clients, through: :events

  validates :email, presence: true
  validates :email, uniqueness: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
