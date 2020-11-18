class Session < ApplicationRecord
  belongs_to :admin
  belongs_to :client
  has_many_attached :images
end
