class PostMovie < ApplicationRecord
    belongs_to :user
    has_many :situations
    has_many :post_comments
end
