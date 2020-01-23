Rails.application.routes.draw do
  devise_for :users
  # ignore ^

  root "books#index"

end
