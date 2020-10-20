# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth(auth_hash)
    session[:user_id] = @user.id if @user
    redirect_to "/"
  end

  protected

  def auth_hash
    request.env["omniauth.auth"]
  end
end
