class SchoolClassesController < ApplicationController
  def index
    @school_class = SchoolClass.all
  end
end