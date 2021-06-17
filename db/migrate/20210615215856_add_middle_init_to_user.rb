class AddMiddleInitToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mid_init, :string
  end
end
