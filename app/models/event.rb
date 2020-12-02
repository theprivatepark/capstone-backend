class Event < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :admin
  belongs_to :client
  has_one_attached :image
  geocoded_by :location_address
  after_validation :geocode, if: ->(obj) { obj.location_address.present? and obj.location_address_changed? }

  def images_url
    rails_blob_path(self.image) if self.image.attached?
  end

  def get_image_url
    url_for(self.image)
  end

end