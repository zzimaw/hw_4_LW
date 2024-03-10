Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  get("/login", :controller => "sessions", :action => "new")
  get("/logout", :controller => "sessions", :action => "destroy")
  resources "users"
end
