Rxngif::Application.routes.draw do
  #post("/picture", :controller => "pictures", :action => "create" , 
  #get("/new_picture_form", { :controller => "pictures", :action => "new", :as => "new_picture" })
  #get("/all_pictures", { :controller => "pictures", :action => "index" })
  #get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  #get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
  #patch("/update_picture/:id", { :controller => "pictures", :action => "update" })
  #delete("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })

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
