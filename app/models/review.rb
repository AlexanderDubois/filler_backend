class Review < ApplicationRecord

    belongs_to :practitioner
    belongs_to :user
end
