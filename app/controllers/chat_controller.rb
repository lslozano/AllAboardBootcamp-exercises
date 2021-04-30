class ChatController < ApplicationController
    def index
        chat_name = params[:chat_name]
        @chat = Chat.where(name: chat_name).first
    end

    def directory
        @chats = Chat.all
    end

    def get_chat_by_id
        @chat = Chat.where(id: params[:chat_id]).first
    end
end
