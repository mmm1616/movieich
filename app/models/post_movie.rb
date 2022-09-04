class PostMovie < ApplicationRecord
    belongs_to :user
    has_many :situations
end
