class AddLastSearchedForAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_searched_for_at, :datetime
  end
end
