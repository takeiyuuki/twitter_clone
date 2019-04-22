class TwittersController < ApplicationController
  before_action :set_twitter, only: [:show, :edit, :update, :destroy]

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
    # @twitter = Twitter.find(params[:id])
  end

  def edit
    # @twitter = Twitter.find(params[:id])
  end

  def update
    # @twitter = Twitter.find(params[:id])
    if @twitter.update(twitter_params)
      redirect_to twitters_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @twitter.destroy
    redirect_to twitters_path, notice:"ブログを削除しました！"
  end

  def confirm
    @twitter = Twitter.new(twitter_params)
  end

  private

  def twitter_params
    params.require(:twitter).permit(:content)
  end

  def set_twitter
    @twitter = Twitter.find(params[:id])
  end
end
