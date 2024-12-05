class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :parent_comment, class_name: "Comment", foreign_key: "comment_id", optional: true

  has_many :replies, class_name: "Comment", foreign_key: "comment_id", dependent: :destroy

  validates :content, presence: true

  # Сортировка по умолчанию: сначала самые старые комментарии
  scope :ordered, -> { order(created_at: :desc) }
  scope :not_replies, -> { where(comment_id: nil) }
end
