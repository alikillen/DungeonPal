Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'characters#index'
  #use resources? and scaffolding? in future

    #list all characters
    get "/characters/list", to: "characters#list", as: "list_all"

    #home
    get "/characters", to:"characters#index", as: "home"

    #create a new character with form
    # prefix is inherited by post route IF the url matches
    # when we use :resource it makes more sense??
   # post "/characters/create", to:"characters#new", as: "new_character"
    
   #get a character form page
    get "/characters/new", to:"characters#new", as:"new_character"

    #edit a character 
    post "/characters/edit", to:"characters#edit", as: "edit_character"

    #show a single character
    get "/characters/:id", to:"characters#show", as:"show_characters"

    #create a character - actually save the data to the session
    post "/characters", to:"characters#create", as: "create_character"


    #mini challenge - create a dynamic route so that names in URL are displayed to page
    get "characters/:names", to: "characters#index", as:"data"


end
