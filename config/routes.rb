Rails.application.routes.draw do

  get 'team/manage'

  resources :okrs do
  	resources :krs do
  		member do
  			patch :complete
  		end

  	end

  end
  
  get 'contact/us'

  get 'presentation/tree'

root 'welcome#index'
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
