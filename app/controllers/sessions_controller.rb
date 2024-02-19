class SessionsController < ApplicationController

  #GET /login
  def new
  end

  #POST /login
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to :back
    else
      #Display login error
      flash.now[:danger] = 'Der er fejl i enten din email eller adgangskode. Prøv igen.'
      #Render new login view
      render new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
