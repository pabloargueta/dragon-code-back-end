class GameQuestionsController < ApplicationController
  def index
    game_questions = GameQuestion.all
    render json: game_questions
  end

  def create
    new_game_question = GameQuestion.new(game_id: game_question_params[:game_id])
    new_question = new_game_question.get_new_question

    formatted_json = new_question.format_new_question_hash

    if new_game_question.save
      render json: formatted_json
    else
      render json: new_game_question.errors
    end
  end

  def update
    game = GameQuestion.find_by(id: params[:id])
    # note: not using strong params for id - could be potentially error prone
    game.update(user_answer: game_question_params[:user_answer])

    render json: game
  end

  private

  def game_question_params
    params.require(:game_question).permit(:id, :game_id, :question_id, :user_answer)
  end
end