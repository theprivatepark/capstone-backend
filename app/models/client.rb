class Client < ApplicationRecord
  has_many :sessions
  has_many :admins, through: :sessions
  has_secure_password
end
