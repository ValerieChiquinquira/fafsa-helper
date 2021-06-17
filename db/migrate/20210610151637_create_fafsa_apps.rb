class CreateFafsaApps < ActiveRecord::Migration[6.1]
  def change
    create_table :fafsa_apps do |t|
      t.boolean :drivers_license
      t.string :drivers_license_st
      t.string :drivers_license_num
      t.boolean :citizen
      t.string :alien_num
      t.boolean :conviction
      t.string :parent_edu
      t.string :parent_edu2
      t.string :receive_aid
      t.string :application_year
      t.string :current_grade
      t.string :bachelors
      t.string :degree_applied

      t.timestamps
    end
  end
end
