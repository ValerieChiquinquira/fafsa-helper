class ChangeDriversLicenseToString < ActiveRecord::Migration[6.1]
  def change
    change_column :fafsa_apps, :drivers_license, :string
  end
end
