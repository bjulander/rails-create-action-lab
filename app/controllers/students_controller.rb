class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    #if session[:form_params] = params.inspect
      @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
      redirect_to student_path(@student)
    #else
      #redirect_to students_path
    #end
  end


end
