class AddFactionToScores < ActiveRecord::Migration
  def change
    add_column :scores, :faction_id, :integer
  end
end
