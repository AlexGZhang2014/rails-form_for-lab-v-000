class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def new
  end
  
  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  private
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end