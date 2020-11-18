class Admin < ApplicationRecord
  has_many :sessions
  has_many :clients, through: :sessions
  has_secure_password
end
