class Blog < ApplicationRecord
  validates :title, :body, presence: true

  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :topic
end
