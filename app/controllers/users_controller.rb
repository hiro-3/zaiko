class UsersController < ApplicationController
  def new
    @users = User.new
  end
  
  def create
   @users = User.new(user_params)
   if @users.save
     redirect_to root_path, success: '登録完了'
   else
     flash.now[:danger] = "登録に失敗"
     render :new
   end
  end 
  
  private
   def user_params
     params.require(:user).permit(:user_name,:email,:password, )
   end   
end
