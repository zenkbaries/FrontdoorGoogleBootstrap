# Migration to add users model
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.text   :oauth_hash
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
