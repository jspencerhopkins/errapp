class ComerrsController < ApplicationController
  before_action :set_comerr, only: [:show, :edit, :update, :destroy]

  def index
    @comerrs = Comerr.all
  end

  def show
    @users = User.all
  end

  def new
    @comerr = Comerr.new
  end

  def edit
  end

  def create
    @user = User.find(session[:user_id])
    @comerr = @user.comerrs.create(comerr_params)
    redirect_to root_url
  end

  def update
    @comerr.update(comerr_params)
    redirect_to @comerr
  end

  def destroy
    @comerr.destroy
    redirect_to root_url
  end

  private
    def set_comerr
      @user = User.find(session[:user_id])
      @comerr = @user.comerrs.find(params[:id])
    end

    def comerr_params
      params.require(:comerr).permit(:message, :description, :resolution, :image)
    end
end
