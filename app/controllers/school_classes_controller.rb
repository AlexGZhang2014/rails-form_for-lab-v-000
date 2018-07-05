class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
  end
  
  def create
    @school_class = SchoolClass.create(post_params(:title, :description))
    redirect_to school_class_path(@school_class)
  end
  
  def show
    @school_class = SchoolClass.find(params[:id])
  end
  
  def edit
    @
  
  private
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end