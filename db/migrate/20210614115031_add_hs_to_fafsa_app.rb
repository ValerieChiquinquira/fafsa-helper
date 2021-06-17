class AddHsToFafsaApp < ActiveRecord::Migration[6.1]
  def change
    add_column :fafsa_apps, :high_school, :string
  end
end
