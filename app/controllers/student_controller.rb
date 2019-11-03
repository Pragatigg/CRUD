class StudentController < ApplicationController
  def list
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(create_params)
    redirect_to student_list_url
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to student_list_url
  end

  def create_params
    params.require(:student).permit(:name, :email, :standard, :age, :hobbies, :percentage, :blood_group)
  end
end
