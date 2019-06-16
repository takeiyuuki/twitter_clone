# frozen_string_literal: true

class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(twitter_id: params[:twitter_id])
    redirect_to twitters_url, notice: "#{favorite.twitter.user.name}さんのブログをお気に入り登録しました"
    end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to twitters_url, notice: "#{favorite.twitter.user.name}さんのブログをお気に入り解除しました"
  end
end
