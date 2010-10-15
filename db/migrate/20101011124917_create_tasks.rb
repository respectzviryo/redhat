class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
     t.string   :user_id
     t.string   :title
     t.string   :description
     t.string   :status
     t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
