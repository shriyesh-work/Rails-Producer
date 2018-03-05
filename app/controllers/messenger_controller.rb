class MessengerController < ApplicationController

  def new
  end

  def create
    messenger = MessengerService.new
    if params[:message].present?
      messenger.publish(params[:message])
    end
  end

end