Rails.application.routes.draw do
	root 'pages#home'
	get 'about', to: 'pages#about'
	
	#resources :articles #all of the routes for articles that we want
	resources :articles, only: [:show] #this will keep the route for show only
end
