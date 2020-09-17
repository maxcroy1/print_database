class TopicImage < ApplicationRecord
  belongs_to :image
  belongs_to :topic
end
