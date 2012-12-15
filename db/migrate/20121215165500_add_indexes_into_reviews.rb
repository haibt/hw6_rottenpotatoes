class AddIndexesIntoReviews < ActiveRecord::Migration
  def up
    add_index :reviews, :movie_id, :order => {:movie_id => :asc}
    add_index :reviews, :moviegoer_id, :order => {:moviegoer_id => :asc}
  end

  def down
    remove_index :reviews, :movie_id
    remove_index :reviews, :moviegoer_id
  end
end
