Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/messenger", to: "messenger#new"
  post "/messenger/send", to: "messenger#create"
  
end
