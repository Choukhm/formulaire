Rails.application.routes.draw do
	#resources :users

	root 'pages#home',       as: :home
	get  'pages/about',      to: 'pages#about',  as: :about

	get  'users/newform',		     to: 'users#new_form',        as: :newform
	get  'users/newformtag',		 to: 'users#new_form_tag',    as: :newformtag
	get  'users/newformfor',		 to: 'users#new_form_for',    as: :newformfor
	post 'users/create', 	         to: 'users#create',          as: :createuser
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
