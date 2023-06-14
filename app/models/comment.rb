class Comment < ApplicationRecord
  belongs_to :comic
  belongs_to :user

  validates :content, presence: true
end
