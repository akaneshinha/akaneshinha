class AdminsController < ApplicationController

  def admin
    @jobs = Job.all
    @entry = Entry.where(job_id: Job.all)
  end

  def find
  end

  def destroy_through
    if
      @job = Job.find_by(id: params[:id]).destroy
      redirect_to '/admin_edit'
    else
      redirect_to '/admin'
    end
  end

  def delete
    @job = Job.find(params[:id])
    @job.delete
    redirect_to :back
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
  redirect_to :back
  end


  def admin_new
    @job = Job.new
  end


  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to :admins_admin_path
    else
      render 'new'
    end
  end

  private
  def job_params
    params.require(:job).permit(:title, :description, :job_type_id, :job_type_detail_id,:area_id)
  end



end
