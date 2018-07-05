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
    @school_class = SchoolClass.find(params[:id])
  end
  
  def update
	  @post = Post.find(params[:id])
	  @post.update(post_params(:title))
	  redirect_to post_path(@post)
	end
  
  private
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end