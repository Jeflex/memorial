class SessionController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    # byebug
    if user && (user.password == (params[:session][:password]))
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to option_path
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
