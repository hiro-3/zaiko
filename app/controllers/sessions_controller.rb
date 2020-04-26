class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to new_user_path
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to root_path, info: 'ログアウトしました'
  end
  
  private
   def log_in(user)
     session[:user_id] = user.id
   end 
   
   def log_out
     session.delete(:user_id)
     @current_user = nil
   end
   
   def user_params
     params.require(:user).permit(:use_name, :email, :password, :password_confirmation)
   end
   
   def email_params
     params.require(:session).permit(:email)
   end
   
   def password_params
     params.require(:session).permit(:password)
   end    
end