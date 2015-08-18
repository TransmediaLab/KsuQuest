class AddFactionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :faction_id, :integer
  end
end
