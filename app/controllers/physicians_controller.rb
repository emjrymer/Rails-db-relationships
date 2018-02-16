class PhysiciansController < ApplicationController
  def index
    @physicians = Physician.all
  end

  def new
    @physician = Physician.new
  end

  def show
    @physician = Physician.find(params[:id])
  end

  def create
    @physician = Physician.new(physician_params)
    @physician.save
    redirect_to @physician
  end

  private

  def physician_params
    params.require(:physician).permit(:name)
  end
end
