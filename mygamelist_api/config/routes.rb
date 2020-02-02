Rails.application.routes.draw do
  resources :games
  resources :users do
    collection do
      post "/login", to: "users#login"
      post "/register", to: "users#register"
    end
  end
  
end


# login_users POST   /users/login(.:format)   users#login
#  register_users POST   /users/register(.:format)      users#register