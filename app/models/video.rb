class Video < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    belongs_to :user

    has_one_attached :video     
end
