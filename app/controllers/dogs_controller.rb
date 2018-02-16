class DogsController < ApplicationController
  def create
    @owner = Owner.find(params[:owner_id])
    @dog = @owner.dogs.create(dog_params)
    redirect_to owner_path(@owner)
  end

  def destroy
    @owner = Owner.find(params[:owner_id])
    @dog = @owner.dogs.find(params[:id])
    @dog.destroy
    redirect_to owner_path(@owner)
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :color)
  end
end
