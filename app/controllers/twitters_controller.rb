class TwittersController < ApplicationController
  def index
    @Twitters = Twitter.all
  end

  def new
    @twitter = Twitter.new
  end

  def create
    Twitter.create(twitter_params)
    redirect_to new_twitter_path
  end

  private

  def twitter_params
    params.require(:twitter).permit(:content)
  end
end
