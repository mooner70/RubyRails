class StudentsController < ApplicationController
  def all
    @all = Student.all
  end

  def create
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    redirect_to '/dojo/:dojo_id/students' if student.valid? == true
    if(student.valid? == false)
      redirect_to '/dojo/:dojo_id/students/new', alert: student.errors.full_messages
    end
  end
  
  def show
    @show = Student.find(params[:id])
    render 'students_show'
  end
  
  def edit
    @edit = Student.find(params[:id])
    render 'edit'
  end

  def destroy
    @destroy = Student.destroy(params[:id])
    redirect_to '/dojo/:dojo_id/students'
  end

  def update
    @update = Sutdent.find(params[:id])
    @update.update(student_params)
    redirect_to '/dojo/:dojo_id/students'
  end
  
  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end

end
