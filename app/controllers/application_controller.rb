require "./config/environment"
require "rubygems"
require "sinatra"
require "sinatra/flash"

class ApplicationController < Sinatra::Base

  #enabling sessions
  configure do
    set :publi_folder, "public"
    set :views, "app/views"
    enable :sessions
    set :session_secret, "dontfindme"
    register Sinatra::Flash
  end

  #Home Page SHD
  get "/home" do
    erb :index
  end

  #checking login
  #def is_student_loggedin?
  # if session[:user_id].is_a? Integer || session[:user_id]==""
  #	  return !!session[:user_id]
  #else
  #flash[:message]="looks like teacher's account is logged in please logout from there! using login option"
  #redirect "/home"
  #end

  #end
  def is_loggedin?
    #if session[:user_id].is_a? Integer
    #flash[:message]="looks like students account is logged in! lo from there using login"
    #redirect "/home"
    #else
    !!session[:user_id]
    #end
  end

  def current_student
    @student = Student.find(session[:user_id])
  end

  def current_teacher
    @teacher = Teacher.find_by_teachid(session[:user_id])
  end



end
