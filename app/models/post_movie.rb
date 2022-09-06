class PostMovie < ApplicationRecord
    belongs_to :user
    has_many :situations
    has_many :post_comments
    
    enum site: { netflix: 0, amazon: 1, une: 2, hulu: 3, dvd: 4 }
end
