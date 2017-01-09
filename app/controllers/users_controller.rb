class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def confirm
    @user = User.new(user_params)

    return if @user.valid?

    render :new
  end

  def back
    @user = User.new(user_params)

    render :new
  end

  def create
    User.create!(user_params)

    render :complete
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:sex)
  end
end
