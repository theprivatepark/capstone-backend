class Client < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :admins, through: :events
  has_secure_password
end
