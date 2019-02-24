class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    #@student = Student.find(params[:id])
    set_student
    if set_student.active == false
      @active = "This student is currently inactive."
    else
      @active = "This student is currently active."
    end
  end

  def activate_student
    if set_student.active == false
      set_student.update(active: true)
    elsif set_student.active == true
      set_student.update(active: false)
    end
    redirect_to "/students/#{set_student.id}"
  end

  # def update
  #   if params[:student][:active] == 'true'
  #     #params[:student][:active] = true
  #     set_student.update(active: true)
  #   else
  #     set_student.update(active: false)
  #     #params[:student][:active] = false
  #   end
  #   #set_student.update(params[:student])
  #   redirect_to "/students/#{set_student.id}"
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def true?(string)
      string == "true"
    end
end