class Micropost < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :love_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 200 }
  validates :picture, presence: true
  validate  :picture_size

  def love(user)
    likes.create(user_id: user.id)
  end

  def unlove(user)
    likes.find_by(user_id: user.id).destroy
  end

  def love?(user)
    love_users.include?(user)
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  private

    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "画像サイズを5MB以下にしてください")
      end
    end
end