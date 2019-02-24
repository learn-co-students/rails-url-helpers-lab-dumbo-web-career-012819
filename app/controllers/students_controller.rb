class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

  def show
      @student = Student.find(params[:id])
  end

  def activate
      @student = Student.find(params[:id])
      @student.toggle!(:active)
      redirect_to student_path(@student)
  end

  # private
  #
  #   def set_student
  #     @student = Student.find(params[:id])
  #   end
end
