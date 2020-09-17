class Topic < ApplicationRecord
    has_many :topic_images
    has_many :images, through: :topic_images
end
