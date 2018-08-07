class User < ApplicationRecord
    has_many :bookmarks
    has_many :photos, through: :bookmarks
    
end
