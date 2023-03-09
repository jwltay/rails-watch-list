class RemoveMovieNullConstraints < ActiveRecord::Migration[7.0]
  def change
    change_column_null :movies, :poster_url, true
    change_column_null :movies, :rating, true
    change_column_null :bookmarks, :comment, false
  end
end
