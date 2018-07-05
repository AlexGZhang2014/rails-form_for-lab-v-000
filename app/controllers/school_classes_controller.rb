class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
  end
  
  def create
    
  end
  
  
  private
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end