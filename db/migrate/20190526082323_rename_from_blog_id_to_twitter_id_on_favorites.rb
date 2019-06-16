# frozen_string_literal: true

class RenameFromBlogIdToTwitterIdOnFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :blog_id, :twitter_id
  end
end
