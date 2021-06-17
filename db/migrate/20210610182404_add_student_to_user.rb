class AddStudentToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :student, :boolean
  end
end
