class GradesController < ApplicationController
  def create
    @grade = Grade.new(params[:grade])
    @grade.assignment_id = params[:assignment_id]

    if @grade.save
      flash[:notice] = "Successfully saved score for assignment."
      redirect_to assignment_path(@grade.assignment_id)
    else
      flash[:alert] = "Error saving score for assignment."
      render action: "new"
    end
  end
end
