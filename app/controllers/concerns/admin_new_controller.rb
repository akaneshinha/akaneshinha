class AdminNewController < ApplicationController
end

def create
  @job = Job.new(job_params)
  if @job.save
    redirect_to :back
  else
   render 'new'
  end
end
