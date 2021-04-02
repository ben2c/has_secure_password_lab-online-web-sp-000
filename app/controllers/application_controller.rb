class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  if params[:username] == "" || params[:password] == ""
  redirect '/failure'
else
  User.create(username: params[:username], password: params[:password])
  redirect '/login'
end
end
