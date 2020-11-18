class Client < ApplicationRecord
  has_many :events
  has_many :admins, through: :events
  has_secure_password
end
