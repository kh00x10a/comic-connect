class Comic < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :magazine
  belongs_to :decade

  validates :title, :author, presence: true

  validates :genre_id, :magazine_id, :decade_id, numericality: { other_than: 1 , message:"can't be blank"}

  belongs_to :user
  has_many :comments
  has_one_attached :image

  def self.search(search)
    if search != ""
      Comic.where(["title Like? OR author Like? OR illustrator Like?", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Comic.all
    end
  end

end
