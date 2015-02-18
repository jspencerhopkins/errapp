class ComerrsController < ApplicationController
  #before_action :set_comerr, only: [:show, :edit, :update, :destroy]

  def index
    @comerrs = Comerr.all
  end

  def show
    @users = User.all
    #@user = User.find(session[:user_id])
    @comerr = Comerr.find(params[:id])
  end

  def new
    @comerr = Comerr.new
  end

  def edit
    @user = User.find(session[:user_id])
    @comerr = @user.comerrs.find(params[:id])
  end

  def create
    @user = User.find(session[:user_id])
    @comerr = @user.comerrs.create(comerr_params)
    redirect_to root_url
  end

  def update
    @user = User.find(session[:user_id])
    @comerr = @user.comerrs.find(params[:id])
    @comerr.update(comerr_params)
    redirect_to @comerr
  end

  def destroy
    @user = User.find(session[:user_id])
    @comerr = @user.comerrs.find(params[:id])
    @comerr.destroy
    redirect_to root_url
  end

  private
    #def set_comerr
      
    #end

    def comerr_params
      params.require(:comerr).permit(:message, :description, :resolution, :image)
    end
end
