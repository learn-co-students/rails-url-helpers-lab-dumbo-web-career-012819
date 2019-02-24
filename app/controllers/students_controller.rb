class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
      set_student
  end


  def activate_student

      if set_student.active == false
          set_student.update(active: true)
      else
          set_student.update(active: false)
      end
      redirect_to "/students/#{set_student.id}"

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
