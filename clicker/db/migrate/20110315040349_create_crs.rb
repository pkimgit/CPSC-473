class CreateCrs < ActiveRecord::Migration
  def self.up
    create_table :crs do |t|
      t.string :Question
      t.text  :Choices
      t.text  :Answers

      t.timestamps
    end
  end

  def self.down
    drop_table :crs
  end
end
