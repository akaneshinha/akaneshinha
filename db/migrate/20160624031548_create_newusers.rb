class CreateNewusers < ActiveRecord::Migration
  def change
    create_table :newusers do |t|
      t.text :name
      t.text :hurigana
      t.text :email
      t.text :password

      t.timestamps null: false
    end
  end
end
