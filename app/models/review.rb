class Review < ApplicationRecord
    belongs_to :restaurant

    validates :rating, numericality: { only_integer: true }
    validates :rating, inclusion: 0..5, presence: true
    validates :content, presence: true
end
