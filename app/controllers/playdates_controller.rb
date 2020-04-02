class PlaydatesController < ApplicationController
  
  def new 
    @playdate = Playdate.new
    @family = Family.find(my_family)
  end

  def create 
    @playdate = Playdate.new(playdate_params)
    @playdate.originator = session[:user_id]
    @playdate.save
    redirect_to playdate_path(@playdate)
  end

  def show
  	@playdate = Playdate.find(params[:id])
    @originator = User.find(@playdate.originator)
    @family = current_user.family
  end


  private

  def playdate_params
    params.require(:playdate).permit(:name, :datetime, :location, :description, :originator)
  end

end