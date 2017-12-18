class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :archive]

  def index
    @messages = Message.all.where(receiver: current_user.id, status: [0,1])

  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to main_app.root_url, notice: "Mensagem criada com sucesso!"
    else
      render :new, notice: @message.errors
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
    params.require(:message).permit(:body, :subject).merge(sender: current_user).merge(receiver: receiver)
  end
end
