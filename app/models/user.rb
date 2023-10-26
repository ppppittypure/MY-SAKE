class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_one  :ranking
    has_many :likes
    has_many :comments


    validates :email, presence: true
    validates :encrypted_password, presence: true
    validates :name, presence: true
    validates :profile, presence: true
    validates :taste_id, presence: true
    validates :preference_id, presence: true
    validates :flavor_id, presence: true


end
