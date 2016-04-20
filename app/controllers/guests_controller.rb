class GuestsController < ApplicationController
  def show
  	@guest = Guest.find(params[:id])
    @comments = @guest.comments
  end

  def new
  	@guest = Guest.new
  end

  def ask
    @guest = Guest.find(params[:id])
  end

  def create
  	Guest.create(guest_params)
  	redirect_to :root
  end

  def destroy
  	i = Guest.find(params[:id])
  	i.destroy
  	redirect_to :root
  end

  def edit
  	@guest=Guest.find(params[:id])
  end

  def update
  	i = Guest.find(params[:id])
  	i.update_attributes(guest_params)
  	redirect_to :root
  end

  private
  def guest_params
    params.require(:guest).permit(:name, :title)
  end
end
