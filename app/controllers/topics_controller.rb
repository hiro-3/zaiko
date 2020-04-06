class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all
  end  
  
  def new
   @topics = Topic.new
  end 
  
  def create
    #binding.pry
    @topics = Topic.new(topic_params)
    if @topics.save
      redirect_to topic_path, success: '投稿しました'
    else
      render :new
    end
  end
  
  private 
   def topic_params
    params.require(:topic).permit(:user_id, :name, :images, :description, :parts, :created_at )
   end 
end
