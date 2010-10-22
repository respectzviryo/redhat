class AddRequestTokenToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :request_token, :string
  end

  def self.down
    remove_column :users, :request_token
  end
end
