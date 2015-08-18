class CreateFactionChanges < ActiveRecord::Migration
  def change
    create_table :faction_changes do |t|
      t.integer :user_id
      t.integer :faction_id

      t.timestamps
    end
  end
end
