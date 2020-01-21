class ActionsController < ApplicationController
  before_action :set_action, only: [:edit, :show]

  def index
    @actions = Action.all
  end

  def new
    @action = Action.new
  end

  def create
    Action.create(action_params)
  end

  def show
    Action.show(action_params)
  end

  def destroy
    action = Action.find(params[:id])
    action.destroy
  end

  def edit
  end

  def update
    action = Action.find(params[:id])
    action.update(action_params)
  end

  def show
  end

  private
  def action_params
    params.require(:action).permit(:image, :text, :name)
  end

  def set_action
    @action = Action.find(params[:id]) 
  end

end