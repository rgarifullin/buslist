class Photo < ActiveRecord::Base
  belongs_to :bus

  validates :image, presence: true

  mount_uploader :image, PhotoUploader
end
