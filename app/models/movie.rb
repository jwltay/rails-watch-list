class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, :overview, :poster_url, :rating, presence: true
  validates :rating, numericality: { only_numeric: true }
  validates :title, uniqueness: true
end
