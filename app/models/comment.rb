class Comment < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  def comment_day
    created_at.strftime("%H:%M")
  end
end
