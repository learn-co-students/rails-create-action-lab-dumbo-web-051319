class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    redirect_to student # will take you to that student's id path/show page #
  end

  # PRIVATE #

  def student_params
    params.permit(:first_name, :last_name)
  end

end
