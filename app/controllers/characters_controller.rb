class CharactersController < ApplicationController

  #need 4 methods - index, new, create show - matches routes
  #will it be reinitialised every time? aka need to save to Db
  # use class variables
  
  #@character = Character.find(params[:id])

  # def initialize
  #   @character = character
  # end


  def search
  end


  def index
    #show homepage
    #render plain: "index/home working"

    @user = "Username"

    puts params
    @names = params[:names]
  end

  def edit
    render plain: "edit working"
    #cache params
  end





  def list
    # # list all characters from the session variable
    # @characters = session[:characters]
    render plain: "list working"
  end
 
  def new
   # render plain: "new working"
   #@character = Character.new
  end
 
 
  def create

    # how to save data to session? use hash? 
    #need a way to save data that will work with the database later
   # render plain: "create working"
    puts "-----------------"
    puts params
    # if session[:characters] == nil
    #    session[:characters] = []
    # end
    # session[:characters].push(params[:character])
    # #redirect to the show html page
    # redirect_to characters_path(session[:characters].length)
    # # pass dynamic route with parentheses


     # This action uses POST parameters. They are most likely coming
  # from an HTML form which the user has submitted. The URL for
  # this RESTful request will be "/clients", and the data will be
  # sent as part of the request body.

    @character = Character.new(characters_params)
    if @character.save
      redirect_to @characters
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end
 
  def show
    @character = session[:characters][params[:id].to_i - 1]
    #puts "-------show method"
    puts @character
    #puts params
    # ################ need to fix this bit!
    #render plain: "show working"
    
  end


end
