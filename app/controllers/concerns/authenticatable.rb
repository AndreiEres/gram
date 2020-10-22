# frozen_string_literal: true

module Authenticatable
  extend ActiveSupport::Concern

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user!
    redirect_to root_path unless current_user
  end
end
