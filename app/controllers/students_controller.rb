class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to students_path
  end 

end
