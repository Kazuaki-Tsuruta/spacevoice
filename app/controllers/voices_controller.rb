class VoicesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @voices = Voice.order("id DESC").page(params[:page]).per(10)
  end

  def new
    @voice = Voice.new
  end

  def destroy
    voice = Voice.find(params[:id])
    voice.destroy
    redirect_to action: :index
  end

  def edit
    @voice = Voice.find(params[:id])
  end

  def update
    voice = Voice.find(params[:id])
    voice.update(create_params)
    redirect_to action: :index
  end

  def create
    Voice.create(create_params)
    redirect_to action: :index
  end


private
  def create_params
    params.require(:voice).permit(:comment).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
