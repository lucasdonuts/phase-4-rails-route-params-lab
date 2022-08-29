class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.where("first_name = ? OR last_name = ?", params[:name].titleize, params[:name].titleize)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
