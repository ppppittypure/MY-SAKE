class SakesController < ApplicationController
  before_action :set_sake, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @sakes = Sake.all
  end

  def new
    @sake = Sake.new
  end

  def create
     Sake.create(sake_params)
     redirect_to '/'
  end

  def show
  end

  def destroy
    sake = Sake.find(params[:id])
    sake.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    sake = Sake.find(params[:id])
    sake.update(sake_params)
    redirect_to root_path
  end





  private

  def sake_params
    params.require(:sake).permit(:content, :name, :image, :text).merge(user_id: current_user.id)
  end
  
  def set_sake
    @sake = Sake.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
