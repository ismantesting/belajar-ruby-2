class Course < ApplicationRecord
    has_many :tasks, dependent: :destroy
    
    validates :tittle, presence: true, length: {maximum: 50}
    validates :description, presence: true
    validates :price, presence: true, numericality: true
end
