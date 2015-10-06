class CreatePlayersPokerTablesTable < ActiveRecord::Migration
  def change
    create_table :players_poker_tables, id: false do |t|
    	t.integer :player_id
    	t.integer :poker_table_id
    end

    add_index :players_poker_tables, :player_id
    add_index :players_poker_tables, :poker_table_id
  end
end
