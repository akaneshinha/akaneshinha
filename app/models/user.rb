class User < ActiveRecord::Base
  has_many :entriess
  has_many :jobs, through: :entriess
end
