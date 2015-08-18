class AddBadgesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :faction_badge, :string
    add_column :users, :milestone_badges, :text
  end
end
