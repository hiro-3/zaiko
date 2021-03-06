class TopicsController < ApplicationController
  def index
    if params[:car_name_key]
      @topics = Topic.where('car_name LIKE ?', "%#{params[:car_name_key]}%")
    elsif
     @topics = Topic.all
    end
  end 
  
  def show
    #binding.pry
    @topics = Topic.where(id: params[:id])
  end 
  
  def new
   @topics = Topic.new
  end 
  
  def create
    #binding.pry
    @topics = current_user.topics.new(topic_params)
    if @topics.save
      redirect_to topics_path
    else
      flash.now[:danger] = "失敗しました"
      render :new 
    end
  end
  
  
  def destroy
    @topics = Topic.find(params[:id])
    @topics.destroy
    redirect_to topics_path, success:'削除しました'
  end
  
  private 
   def topic_params
    params.require(:topic).permit(:user_id, :time, :car_name, :car_type, :process, :worker, :parts, :check,
     :images, :man_hours, :subject, :shop_name, :description, :accrual_date, 
     )
   end 
end
