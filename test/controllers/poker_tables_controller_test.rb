require 'test_helper'

class PokerTablesControllerTest < ActionController::TestCase
  setup do
    @poker_table = poker_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poker_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poker_table" do
    assert_difference('PokerTable.count') do
      post :create, poker_table: { actual_time: @poker_table.actual_time, name: @poker_table.name }
    end

    assert_redirected_to poker_table_path(assigns(:poker_table))
  end

  test "should show poker_table" do
    get :show, id: @poker_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poker_table
    assert_response :success
  end

  test "should update poker_table" do
    patch :update, id: @poker_table, poker_table: { actual_time: @poker_table.actual_time, name: @poker_table.name }
    assert_redirected_to poker_table_path(assigns(:poker_table))
  end

  test "should destroy poker_table" do
    assert_difference('PokerTable.count', -1) do
      delete :destroy, id: @poker_table
    end

    assert_redirected_to poker_tables_path
  end
end
