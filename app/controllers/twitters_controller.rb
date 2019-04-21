class TwittersController < ApplicationController
  def index
  end

  def new
    @twitter = Twitter.new
  end

  def create
    Twitter.create(blog_params)
    redirect_to new_twitter_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
