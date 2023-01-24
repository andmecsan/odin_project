class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    validates :title, uniqueness: true, presence: true
    validates :body, presence: true
end
