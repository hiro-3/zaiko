class InspectsController < ApplicationController
  def new
    @inspects = Inspect.new
  end
  
  def show
    #binding.pry
    @inspects = Inspect.where(id: params[:id])
  end 
  
  def index
    @inspects = Inspect.all
  end 
  
  def create
   #binding.pry
    @inspects = Inspect.new(inspect_params)
   if @inspects.save
     redirect_to inspects_path success: '投稿しました'
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
     params.require(:inspect).permit(:user_id, :car_name, :name, :process, :worker, :parts, :images, :man_hours, :shop_name, :description, :accrual_date, :check1 )
   end
end
