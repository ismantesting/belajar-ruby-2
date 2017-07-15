class Course < ApplicationRecord
    has_many :tasks, dependent: :destroy
    
    validates :tittle, presence: true, length: {maximum: 50}
    validates :description, presence: true
    validates :price, presence: true, numericality: true
    
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
