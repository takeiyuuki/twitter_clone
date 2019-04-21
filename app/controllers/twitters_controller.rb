class TwittersController < ApplicationController
  def index
  end

  def new
    @twitter = Twitter.new
  end

  def create
    Twitter.create(content: params[:twitter][:content])
  end
end
