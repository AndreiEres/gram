# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Authenticatable

  helper_method :current_user, :authenticate_user!
end
