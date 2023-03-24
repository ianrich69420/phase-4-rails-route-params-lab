class StudentsController < ApplicationController

  def index
    students = Student.all
    if params[:name] != nil
      render json: Student.where("first_name = ? OR last_name = ?", params[:name].capitalize, params[:name].capitalize)
    else
      render json: students
    end
  end

  def show
    render json: Student.find(params[:id])
  end

end
