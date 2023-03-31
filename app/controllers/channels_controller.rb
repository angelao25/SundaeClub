class ChannelsController < ApplicationController
  before_action :set_channel

  def show
  end

  def edit
  end

  def update
    if @channel.update!(channel_params)
      flash["notice"] = "#{@channel.name} has been updated successfully."
      redirect_to channel_path(@channel)
    else
      render :edit
    end
  end

  def suspend
    if user.is_admin?
      @channel.update(suspended_at: Time.now)
      redirect_to channel_path(@channel)
    else
      redirect_to channel_path(@channel)
    end
  end

  private

  def channel_params
    params.require(:channel).permit(:name, :description)
  end

  def set_channel
    @channel = Channel.find(params[:id])
  end
end
