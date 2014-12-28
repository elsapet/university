class PrerequisitesController < ApplicationController

  # also add co-requisites ... ?

  def create
    if Requirement.where(prerequisite_id:params[:prerequisite_id], course_id:params[:course_id]).count > 0
      flash[:error] = 'Course already has prerequisite added'
    else
      if params[:prerequisite_id] != params[:course_id] # course can't have itself as prerequisite
        new_prerequisite = Course.find(params[:prerequisite_id])
        Course.find(params[:course_id]).prerequisites << new_prerequisite
        flash[:notice] = 'Added prerequisite'
      else
        flash[:error] = 'Course cannot have itself as a prerequisite'
      end
    end
    redirect_to root_url
  end

end