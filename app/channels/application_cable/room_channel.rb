def subscribed
    room = Room.find params[:room]
    stream_for room
end