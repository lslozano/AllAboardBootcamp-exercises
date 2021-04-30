class Message < ApplicationRecord
    belongs_to :chat

    def print_message
        "This is a message that says #{message} from the Chat #{chat.name}"
    end

    def display_message
        message
    end
end
