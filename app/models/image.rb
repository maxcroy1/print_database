class Image < ApplicationRecord
    has_many :genre_images
    has_many :genres, through: :genre_images

    has_many :artist_images
    has_many :artists, through: :artist_images

    has_many :topic_images
    has_many :topics, through: :topic_images
end
