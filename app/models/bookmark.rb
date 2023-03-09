class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, :movie_id, :list_id, presence: true
  validates :movie_id, :list_id, uniqueness: true
end
