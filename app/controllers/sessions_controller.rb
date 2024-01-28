class SessionsController < ApplicationController

  def new
    render 'sessions/login'
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      logger.info "Session data: #{session.inspect}"
      Rails.logger.debug "Session data: #{session.inspect}"
      puts "Session data: #{session.inspect}" 
      puts "Session #{session[:user_id]}"
      puts "blah blah blah aliens"
      redirect_to '/'
    else
      redirect_to '/login'
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end