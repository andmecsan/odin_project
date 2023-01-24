class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :username, presence: true, length: {in: 4..13}, uniqueness: true
    validates :password, presence: true, length: {in: 6..17}
    validates :email, presence: true, uniqueness: true
end
