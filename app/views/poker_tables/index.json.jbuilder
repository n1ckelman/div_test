json.array!(@poker_tables) do |poker_table|
  json.extract! poker_table, :id, :name, :actual_time
  json.url poker_table_url(poker_table, format: :json)
end
