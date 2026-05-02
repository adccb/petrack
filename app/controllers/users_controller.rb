class UsersController < ApplicationController
  skip_before_action :require_authentication, only: [ :new, :create ]

  def new
    redirect_to root_url if authenticated?
    @user = User.new
  end

  def edit
  end

  def create
    User.create user_params
    redirect_to new_session_path
  end

  def update
  end

  private

  def user_params
    params.permit(user: [ :email_address, :password ])[:user]
  end
end
