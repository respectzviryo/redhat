class CreateExperimentals < ActiveRecord::Migration
  def self.up
    create_table :experimentals do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :experimentals
  end
end
