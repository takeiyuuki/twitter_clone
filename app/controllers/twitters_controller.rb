class TwittersController < ApplicationController
  def index
    @twitters = Twitter.all
    binding.pry
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

  def edit
    @twitter = Twitter.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render 'edit'
    end
  end

  private

  def twitter_params
    params.require(:twitter).permit(:content)
  end
end
