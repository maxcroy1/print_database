class ArtistImage < ApplicationRecord
  belongs_to :image
  belongs_to :artist
end
