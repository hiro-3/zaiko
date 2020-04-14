class TopicsController < ApplicationController
  def index
    @topics = Topic.all
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
    params.require(:topic).permit(:user_id, :car_name, :name, :process, :worker, :parts, :images, :man_hours, :subject, :shop_name, :description, :accrual_date )
   end 
end
