class AddUserListingsTable < ActiveRecord::Migration
  def change
    create_table :user_listings do |t|
      t.references :user, :index => true
      t.references :listing

      t.timestamps null: false
    end
  end
end
