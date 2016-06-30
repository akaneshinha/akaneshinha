class AdminEditController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to :_path
    else
     render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to :back
    else
      render 'edit'
    end
  end


  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to :back
  end
end

private
 def job_params
     params[:job].permit(:title, :detail)
 end