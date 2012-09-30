AngryRickshaw::Application.routes.draw do

	root to: 'home#home'
	resources :activity

	match '/map', to: 'map#map', :as => 'map'

	match '/currency', to: 'currency#currency'

	match '/activity/', to: 'activity#index', :as => 'all_activity'
	match '/activity/by_category/:category', to: 'activity#by_category', :as => 'activity_by_category'

	match '/about', to: 'about#about'

	# it cares about routing errors, when given URL doesn't exist
	match '*a', :to => 'errors#routing'

end
