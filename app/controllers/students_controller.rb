class StudentsController < ApplicationController
  def index
    @students = Student.all

    render :index
  end

  def show
    @student = Student.find(params["id"])

    render :show
  end

  def create
    student = Student.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      subject: params["subject"]
    )

      render json: student
    end

  def update
    student = Student.find(params["id"])

    student.update(
      first_name: params["first_name"] || student.first_name,
      last_name: params["last_name"] || student.last_name,
      subject: params["subject"] || student.subject
    )

    render json: student
  end

  def destroy
    student = Student.find(params["id"])

    student.destroy

    render json: { message: "Student deleted" }
  end
end
