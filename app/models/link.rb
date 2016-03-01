class Link < ActiveRecord::Base
  validates :title, :url, :user_id, presence: true
  default_scope -> { order(id: :desc) }
  enum read: [:unread, :read]
  belongs_to :user
end
