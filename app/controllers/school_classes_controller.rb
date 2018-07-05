class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
  end
  
  def create
    
  end
end