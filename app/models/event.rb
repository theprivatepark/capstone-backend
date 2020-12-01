class Event < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :admin
  belongs_to :client
  has_one_attached :image

  def images_url
    rails_blob_path(self.image) if self.image.attached?
  end

  def get_image_url
    url_for(self.image)
  end

end