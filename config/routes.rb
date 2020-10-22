# frozen_string_literal: true

Rails.application.routes.draw do
  root "pages#home"

  get "/auth/:provider/callback", to: "sessions#create"
  get "/auth/logout", to: "sessions#logout"
end
