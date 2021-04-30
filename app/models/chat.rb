class Chat < ApplicationRecord
    has_many :messages

    def get_messages
        messages
    end
end
