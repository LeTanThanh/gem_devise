Rails.application.routes.draw do
  root "home#index"

  devise_for :users, controllers: {
    registrations: "user/registrations",
    sessions: "user/sessions"
  }
end
