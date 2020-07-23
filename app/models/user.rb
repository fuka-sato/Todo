class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates_confirmation_of :password  
  attr_accessor :password_confirmation 
  
  validates :nickname,
            presence: true,                     
            uniqueness: true,                   
            length: { maximum: 20 }            
  
  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } 
  
  validates :password,
            presence: true,                     
            length: { minimum: 7 },            
            format: { with: /\A[a-z0-9]+\z/i } 

  has_many :posts
end
