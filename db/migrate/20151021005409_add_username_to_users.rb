class AddUsernameToUsers < ActiveRecord::Migration
  # Anything inside this method is translated into SQL code
  def change
  	add_column :users, :username, :string # Adds column username to users table of type string
  	add_index :users, :username, unique: true # Indexs usernames for quick lookups and ensures usernames are unique
  end
end
