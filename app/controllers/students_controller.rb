class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def new
  end
  
  def create
    @school_class = SchoolClass.create(post_params(:title, :description))
    redirect_to school_class_path(@school_class)
  end
  
  private
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end