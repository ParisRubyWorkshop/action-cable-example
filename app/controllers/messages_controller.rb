class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = current_user
    message.save
    redirect_to chatroom_path(message.chatroom)
  end

  private

    def message_params
      params.require(:message).permit(:content, :chatroom_id)
    end
end

