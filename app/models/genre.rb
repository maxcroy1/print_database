class Genre < ApplicationRecord
    has_many :genre_images
    has_many :images, through: :genre_images
end
