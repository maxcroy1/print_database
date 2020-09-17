class Artist < ApplicationRecord
    has_many :artist_images
    has_many :images, through: :artist_images
end
