Rails.application.routes.draw do
	
  devise_for :users, :controllers => {
   :registrations => 'devise/registrations',
   :sessions => 'devise/sessions'
 }
  root to:'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :books
 resources :users
 resources :homes
 get 'home/about'=>'home#about'
end
