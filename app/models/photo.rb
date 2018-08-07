class Photo < ApplicationRecord
    validates :image_url, presence: true
    has_many :bookmarks
    has_many :users, through: :bookmarks 
end
