class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :steam_id
      t.string :avatar
      t.string :avatar_medium
      t.string :avatar_full
      t.string :persona_state
      t.string :profile_url
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
