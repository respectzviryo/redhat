class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
  end

  def self.down
    remove_column :users, :lastname
    remove_column :users, :firstname
  end
end
