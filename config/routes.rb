Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  root controller: 'home', action: :index

  devise_scope :user do
    get '/:type/sign_up', to: 'devise/registrations#new'
  end
  
end
