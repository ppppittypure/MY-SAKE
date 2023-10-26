class Ranking < ApplicationRecord
    has_one_attached :image
belongs_to :user
has_many :comments

validates :content, presence: true
validates :title, presence: true
validates :text, presence: true
validates :evaluation, presence: true
#validates :image, precence: true
end
