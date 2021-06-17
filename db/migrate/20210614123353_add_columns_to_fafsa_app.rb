class AddColumnsToFafsaApp < ActiveRecord::Migration[6.1]
  def change
    add_column :fafsa_apps, :high_school_name, :string
    add_column :fafsa_apps, :high_school_city, :string
    add_column :fafsa_apps, :high_school_state, :string
    add_column :fafsa_apps, :housing_plans, :string
    add_column :fafsa_apps, :married, :string
    add_column :fafsa_apps, :dep, :string
    add_column :fafsa_apps, :kids, :string
  end
end
