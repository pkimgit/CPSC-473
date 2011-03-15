class CreateClickers < ActiveRecord::Migration
  def self.up
    create_table :clickers do |t|
      t.string :Question
      t.text  :Choices
      t.text  :Answers

      t.timestamps
    end
  end

  def self.down
    drop_table :clickers
  end
end
