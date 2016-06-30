# controllers/admin_controller.rb

class AdminController < ApplicationController
  def admin_new
    @job = Job.new
  end

  def job_create
    @job = Job.new(job_params)
    if @job.save
      redirect_to "/admins/admin"
    else
      render 'new'
    end
  end

  def job_params
    params.require(:job).permit(:title, :detail, :job_type_id, :job_type_detail_id, :area_id)
  end

end
