class RankingController < ApplicationController

    
  before_action :set_ranking, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @rankings = Ranking.all
  end

  def new
    @ranking = Ranking.new
  end

  def create
    Ranking.create(ranking_params)
    redirect_to "/"
  end

  def show
  end

  def destroy
    ranking = ranking.find(params[:id])
    ranking.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    ranking = Ranking.find(params[:id])
    ranking.update(ranking_params)
    redirect_to root_path
  end

  private

  def ranking_params
    params.require(:ranking).permit(:content, :name, :image, :text).merge(user_id: current_user.id)
  end

  def set_rankng
    @ranking = Ranking.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
