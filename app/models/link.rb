class Link < ActiveRecord::Base
  # validates :title, :url, presence: true
  default_scope -> { order(id: :desc) }
  enum read: [:false, :true]
  belongs_to :user
end
