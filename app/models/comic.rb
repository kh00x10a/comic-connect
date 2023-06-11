class Comic < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :magazine
  belongs_to :decade

  belongs_to :user
end
