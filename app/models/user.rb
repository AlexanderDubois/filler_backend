class User < ApplicationRecord

    has_many :reviews
    has_many :practitioners, through: :reviews
end
