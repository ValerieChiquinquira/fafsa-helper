class ChangeConvictionToString < ActiveRecord::Migration[6.1]
  def change
    change_column :fafsa_apps, :conviction, :string
  end
end
