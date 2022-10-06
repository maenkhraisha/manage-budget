Rails.application.routes.draw do
  # devise_for :users


  devise_for :users
  root to: "home#index"
end



#  use this just if you want to use link to insted of button to for sign out
#   devise_scope :user do  
#     get '/users/sign_out' => 'devise/sessions#destroy'     
#  end
