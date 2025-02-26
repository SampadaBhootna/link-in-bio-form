Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "admin"})

  post("/insert_item", { :controller => "items", :action => "insert_item"})
end
