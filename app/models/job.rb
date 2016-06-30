class Job < ActiveRecord::Base

  has_many :entries
  has_many :users, through: :entries
  belongs_to :area
  belongs_to :job_type
  belongs_to :job_type_detail

end
