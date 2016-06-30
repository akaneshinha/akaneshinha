class CreateJobUsers < ActiveRecord::Migration
  def change
    create_table :job_users do |t|

      t.timestamps null: false
    end
  end
end
