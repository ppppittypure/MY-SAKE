class Sake < ApplicationRecord
    has_one_attached :image
    belongs_to :User
    has_many :comments
    
    validates :content, presence: true
    validates :title, presence: true
    validates :text, presence: true
    validates :evaluation, presence: true
    
end
