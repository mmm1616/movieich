class PostMovie < ApplicationRecord
    belongs_to :user
    belongs_to :situation
    has_many :post_comments
    has_many :favorites, dependent: :destroy
    
    enum site: { netflix: 0, amazon: 1, une: 2, hulu: 3, dvd: 4 }
    
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
