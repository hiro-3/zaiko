class InspectsController < ApplicationController
  before_action :inspect_new, only: [:new, :new1, :new2]
  
  def new
  end
  
  def new1
  end
  
  def new2
  end
  
  
  def show
    #binding.pry
    @inspects = Inspect.where(id: params[:id])
  end 
  
  def show1
    #binding.pry
    @inspects = Inspect.where(id: params[:id])
  end 
  
  def show2
    #binding.pry
    @inspects = Inspect.where(id: params[:id])
  end 
  
  def index
    @inspects = Inspect.all
  end 
  
  def create
  #binding.pry
    @inspects = current_user.inspects.new(inspect_params)
   if @inspects.save
     redirect_to inspects_path 
   else
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
       :parts, :images, :man_hours, :shop_name, :description, :accrual_date,:choices1_id,:mold_type, :mold_type1, :mold_type2,
       :check1, :check2, :check3, :check4,
     )
   end
   
   def inspect_new
     @inspects = Inspect.new
   end   
end
