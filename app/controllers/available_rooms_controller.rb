class AvailableRoomsController < ApplicationController
  helper_method :rooms

  private

  def rooms
    @rooms ||= Room.available(Date.parse(params[:from]), Date.parse(params[:till]), params[:city])
  end
end
