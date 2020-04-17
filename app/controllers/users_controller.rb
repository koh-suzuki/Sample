class UsersController < ApplicationController
  def index
    @users = User.all.order(id: "DESC")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end
end
