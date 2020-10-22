# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @user = current_user
  end
end
