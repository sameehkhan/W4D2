class CatsController < ApplicationController

  def index
    # debugger
    @cats = Cat.all
    render :index
  end

  def show
    @cats = Cat.find(params[:id])
    render :show
  end

  def create

  end

  def user_params
    params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
  end


end
