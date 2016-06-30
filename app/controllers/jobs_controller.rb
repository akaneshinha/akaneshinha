class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def joblist
    @job = Job.all
    @job = @job.where(area_id: params[:area_id]) if params[:area_id].present?
    @area = Area.all

  end
  def job
  　@job = Job.find_by(id: params[:id])
  end

  def show
    @job = Job.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def entry
    Entry.create(job_id: params[:job_id], user_id: params[:user_id])
     if session[:user_id].present?
       redirect_to users_mypage_path
     else
       redirect_to "/users/login"
    #@job_id = session[:job_id]
    #  redirect_to "/mypage"
    # @user = User.find(params[:id])
     end
  end

end

private
  def job_params
    params.require(:job).permit(:title, :description, :area_id, :job_type_id, :job_type_detail_id)
  end
