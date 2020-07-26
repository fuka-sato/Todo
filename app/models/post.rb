class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable

  validates :title,
            presence: true,                            
            length: { maximum: 40 } 
            
  validates :body,
            presence: true

  validates :tag_list,
            presence: true
end
