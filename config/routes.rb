Rxngif::Application.routes.draw do
  post("/create_picture", { :controller => "pictures", :action => "create" })
  get("/new_picture_form", { :controller => "pictures", :action => "new", :as => "new_picture" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
  patch("/update_picture/:id", { :controller => "pictures", :action => "update" })
  delete("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })
end
