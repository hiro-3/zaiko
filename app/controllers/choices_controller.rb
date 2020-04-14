class ChoicesController < ApplicationController
  
  def new
   @choices = Choice.new
  end 
  
  def create
   #binding.pry
   @choices = Choice.new(choice_params)
    if @choices.save
      redirect_to new_inspect_path
    else
      render :new
    end
  end
  
  private
   def choice_params
    params.require(:choice).permit( :id, :check )  
   end     
end
