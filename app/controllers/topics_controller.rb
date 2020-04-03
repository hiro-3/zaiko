class TopicsController < ApplicationController
  def new
   @topics = Topic.new
  end 
end
