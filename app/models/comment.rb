class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  validates :content, presence: true, length: { maximum: 150 }
  validates :user_id, presence: true
end