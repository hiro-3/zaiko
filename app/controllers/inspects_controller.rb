class InspectsController < ApplicationController

  def new
    #binding.pry
    @inspects = Inspect.new
  end
  
  def show
    #binding.pry
    @inspects = Inspect.where(id: params[:id])
  end 
  
  def index
    #binding.pry
    @inspects = Inspect.all
  end 
  
  def create
  #binding.pry
    @inspects = current_user.inspects.new(inspect_params)
   if @inspects.save
     redirect_to inspects_path 
   else 
     #binding.pry
     render :new 
   end 
  end 
  
  
  def destroy
    @inspects = Inspect.find(params[:id])
    @inspects.destroy
    redirect_to inspects_path, success:'成功'
  end
  
  
  private
   def inspect_params
     params.require(:inspect).permit(
       :user_id, :car_name, :name, :process, :worker,
       :parts, :images, :man_hours, :shop_name, :description, :accrual_date,:choices1_id,:mold_type,
       :check, :judge1, :judge2, :judge3, :judge4,
     )
   end
end
