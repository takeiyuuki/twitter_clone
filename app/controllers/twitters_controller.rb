class TwittersController < ApplicationController
  def index
    @twitters = Twitter.all
  end

  def new
    @twitter = Twitter.new
  end

  def create
    @twitter = Twitter.create(twitter_params)
    if @twitter.save
     redirect_to twitters_path, notice:"ブログを作成しました！"
    else
     render 'new'
    end
  end

  def show
    @twitter = Twitter.find(params[:id])
  end

  private

  def twitter_params
    params.require(:twitter).permit(:content)
  end
end
