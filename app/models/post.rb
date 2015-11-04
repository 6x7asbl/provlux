class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :excerpt, presence: true
  validates :content, presence: true

  def published?
    published_at >= Time.now
  end
end
