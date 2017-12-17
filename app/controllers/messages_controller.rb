class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :archive]

  def index
    @messages = Message.find_by_receiver(current_user.id)
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to main_app.root_url
    else
      redirect_to main_app.root_url, notice: @message.errors
    end
  end

  def show
    @message.update_status_to 1
  end

  def archive
    if @message.update_status_to 2
      redirect_to main_app.root_url
    else
      redirect_to main_app.root_url, notice: @message.errors
    end

  end

  private

  def set_message
    @message = Message.find_by(id: params[:id])
  end

  def message_params
    receiver = User.find_by(email: params[:receiver_email])
    params.require(:message).permit(:body).merge(sender: current_user).merge(receiver: receiver)
  end
end
