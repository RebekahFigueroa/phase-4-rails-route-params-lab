class StudentsController < ApplicationController

  def index
    # students = params[:name] ? Student.find(:all, :name=params[:name]) : Student.all 
    students = params[:name] ? Student.where("first_name like ? OR last_name like ?", params[:name], params[:name]) : Student.all 
    render json: students
  end

  def info
    student = Student.find(params[:id])
    render json: student 
  end 

end
