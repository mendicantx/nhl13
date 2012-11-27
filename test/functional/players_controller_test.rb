require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { check_position: @player.check_position, defense_rebound: @player.defense_rebound, hand_quick: @player.hand_quick, handed: @player.handed, name: @player.name, overall: @player.overall, player_type: @player.player_type, position: @player.position, ps3_auction: @player.ps3_auction, ps3_bin: @player.ps3_bin, salary: @player.salary, show_low: @player.show_low, skate_high: @player.skate_high, sotw: @player.sotw, true_overall: @player.true_overall, xbox_auction: @player.xbox_auction, xbox_bin: @player.xbox_bin }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    put :update, id: @player, player: { check_position: @player.check_position, defense_rebound: @player.defense_rebound, hand_quick: @player.hand_quick, handed: @player.handed, name: @player.name, overall: @player.overall, player_type: @player.player_type, position: @player.position, ps3_auction: @player.ps3_auction, ps3_bin: @player.ps3_bin, salary: @player.salary, show_low: @player.show_low, skate_high: @player.skate_high, sotw: @player.sotw, true_overall: @player.true_overall, xbox_auction: @player.xbox_auction, xbox_bin: @player.xbox_bin }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
