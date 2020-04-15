class ChoicesController < ApplicationController

  def new
   @choices = Choice.new
  end
end