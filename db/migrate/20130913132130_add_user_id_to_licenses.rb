class AddUserIdToLicenses < ActiveRecord::Migration
  def change
    add_column :licenses, :user_id, :integer
  end
end
