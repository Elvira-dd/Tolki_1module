class Podcast < ApplicationRecord
    has_and_belongs_to_many :tags
    has_many :issues
    has_many :posts, through: :issues
    has_and_belongs_to_many :authors
end
