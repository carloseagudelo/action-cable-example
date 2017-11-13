class ChatroomsController < ApplicationController

  def index
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      ActionCable.server.broadcast 'chats',
        topic: @chatroom.topic,
        id: @chatroom.id
      head :ok
    else
      respond_to do |format|
        flash[:notice] = {error: ["YA EXISTE UN CHATROOM CON ESE NOMBRE"]}
        format.html { redirect_to new_chatroom_path }
      end
    end
  end

  def show
  	@chatroom = Chatroom.find(params[:slug])
    @message = Message.new
  end

  private
    def chatroom_params
      params.require(:chatroom).permit(:topic)
    end

end
