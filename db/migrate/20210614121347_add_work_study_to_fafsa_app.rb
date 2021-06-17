class AddWorkStudyToFafsaApp < ActiveRecord::Migration[6.1]
  def change
    add_column :fafsa_apps, :work_study, :string
  end
end
