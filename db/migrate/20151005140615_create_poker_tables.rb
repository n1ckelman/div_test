class CreatePokerTables < ActiveRecord::Migration
  def change
    create_table :poker_tables do |t|
      t.string :name
      t.datetime :actual_time

      t.timestamps
    end
  end
end
