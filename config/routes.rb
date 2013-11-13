Rxngif::Application.routes.draw do
    # CREATE
	get '/posts/new', :controller => 'posts', :action => 'new', :as => 'new_picture'
	post '/posts', :controller => 'posts', :action => 'create', :as => 'pictures'

	# READ
	get '/posts', :controller => 'posts', :action => 'index'
	get '/posts/:id', :controller => 'posts', :action => 'show', :as => 'picture'

	# UPDATE
	get '/posts/:id/edit', :controller => 'posts', :action => 'edit', :as => 'edit_picture'
	patch '/posts/:id', :controller => 'posts', :action => 'update'

	# DELETE
	delete '/posts/:id', :controller => 'posts', :action => 'destroy'
end
