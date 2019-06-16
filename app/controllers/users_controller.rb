# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_login, only: %i[show edit destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @favorite_twitters = @user.favorite_twitters
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  def require_login
    unless logged_in?
      flash[:error] = 'forbidden user'
      redirect_to new_session_path
    end
  end
end
