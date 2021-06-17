class AddFosterCareToFafsaApp < ActiveRecord::Migration[6.1]
  def change
    add_column :fafsa_apps, :foster_care, :string
  end
end
