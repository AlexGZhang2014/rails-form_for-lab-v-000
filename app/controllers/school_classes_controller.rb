class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
  end
  
  def create
    
  end
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end