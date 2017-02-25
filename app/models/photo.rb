class Photo < ApplicationRecord
  has_many :fans, :through => :likes, :source => :user
  has_many :comments, class_name: "Comment", foreign_key: "photo_id"
  has_many :likes, class_name: "Like", foreign_key: "photo_id"

  belongs_to :user


  validates :user_id, presence: true
end
