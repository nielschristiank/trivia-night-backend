class GameHistoriesController < ApplicationController
  before_action :get_user

  def index
    # game_histories = GameHistory.all
    p get_user
    game_histories = User.find(get_user.id).game_histories
    render json: game_histories
  end

  def create
    #Create a new game history
    game_history = GameHistory.create(game_history_params)

    #respond with our new game history
    render json: game_history
  end

  def show
    id = params[:id]
    game_history = GameHistory.find_by_user_id(get_user)

    render json: game_history
  end

  def update
    id = params[:id]
    game_history = GameHistory.find_by_user_id(get_user).update(id, game_history_params)
    render json: game_history
  end

  def destroy
    id = params[:id]
    GameHistory.find_by_user_id(get_user).find(id).destroy
  end

  # Handle strong params, so we are secure
  private
  def game_history_params
    params.require(:game_history).permit(:game_mode, :correct_answers, :total_questions, :user_id)
  end

  def get_user
    user = User.find(params[:user_id])
  end
end
