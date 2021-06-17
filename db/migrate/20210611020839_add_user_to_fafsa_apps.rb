class AddUserToFafsaApps < ActiveRecord::Migration[6.1]
  def change
    add_reference :fafsa_apps, :user, foreign_key: true
  end
end
