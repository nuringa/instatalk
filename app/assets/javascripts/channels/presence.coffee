App.presence = App.cable.subscriptions.create "PresenceChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    App.presence.printOnline(data.users)

  printOnline: (users) ->
    if (users.length > 0)
      text = ''
      text += users.map((user) -> user.nickname).join(' ')

      $('.users-online').text(text)
