class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
