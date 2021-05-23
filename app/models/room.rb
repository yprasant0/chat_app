class Room < ApplicationRecord
    has_many :room_messages, dependent: :destroy, inverse_of: :room

    def as_json(options)
        super(options).merge(user_avatar_url: user.gravatar_url)
    end
end
