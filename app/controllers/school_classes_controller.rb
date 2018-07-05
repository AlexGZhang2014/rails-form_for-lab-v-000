class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
  end
  
  def create
    @post = Post.new(post_params(:title, :description))
    @post.save
    redirect_to post_path(@post)
  end
  
  
  private
  
  def post_params(*args)
    params.require(:post).permit(*args)
  end
end