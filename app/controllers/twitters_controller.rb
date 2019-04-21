class TwittersController < ApplicationController
  def index
  end

  def new
    @twitter = Twitter.new
  end

  def create
    Twitter.create(params.require(:blog).permit(:title, :content))
    redirect_to new_twitter_path
  end
end
