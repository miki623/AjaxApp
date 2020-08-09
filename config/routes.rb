Rails.application.routes.draw do

  root "posts#index"
  post "posts", to: "posts#create"

end