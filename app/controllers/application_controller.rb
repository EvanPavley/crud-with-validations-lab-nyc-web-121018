class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

# rails g resource Song title:string released:boolean release_year:integer artist_name:string genre:string --no-test-framework
