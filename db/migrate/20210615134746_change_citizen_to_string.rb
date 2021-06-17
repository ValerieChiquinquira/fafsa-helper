class ChangeCitizenToString < ActiveRecord::Migration[6.1]
  def change
    change_column :fafsa_apps, :citizen, :string
  end
end
