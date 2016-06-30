class JobsJoblistController < ApplicationController

  def change
    create_table :jobs do |job|

    t.string   "title"
    t.integer  "job_type_id"
    t.integer  "job_type_detail_id"
    t.text     "detail"
    t.integer  "area_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    end
  end

  def joblist
    @job = Job.all
　end

  def index

    @Area_id = params[:area_id]

  end

  def each
    @job = Job.find_by(id: params[:id])
  end


  def find
    @form = JobFindForm.new
  end

  private
  
  def job_params
    @job = Job.each(title: params[:title])
  end


end
