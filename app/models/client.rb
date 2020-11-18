class Client < ApplicationRecord
  has_many :sessions
  has_many :admins, through: :sessions
end
