class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    #byebug
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def create

    @school_class = SchoolClass.create(params[:school_class])


    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(:title, :room_number)
  end

end
