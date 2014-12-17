Rails.application.routes.draw do
  get 'my_expanse/index'

  resources :expenses
  devise_for :users

  	devise_scope :user do
  		root :to => 'devise/sessions#new'
	end
end
