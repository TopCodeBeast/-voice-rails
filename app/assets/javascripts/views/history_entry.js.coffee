Voice.HistoryEntryView = Ember.View.extend({

  tagName: 'tr'


  didInsertElement: ->
    # FIXME This will become expensive for high call counts.
    #       Can we lazy-init this, e.g. on mouse-enter?
    #
    mailbox = @get 'controller.content.mailbox'
    @setupJplayer(mailbox) if mailbox


  setupJplayer: (mailbox) ->
    player    = @get 'controller.mailboxPlayer'
    container = @get 'controller.mailboxContainer'

    ($ "##{player}").jPlayer({
      volume: 1.0
      muted: false
      supplied: 'mp3'
      solution: 'html'
      errorAlerts: false
      preload: 'metadata'
      warningAlerts: false
      cssSelectorAncestor: "##{container}"
      ready: ->
        ($ @).jPlayer('setMedia', mp3: "/record/#{mailbox}.mp3")
    })


  willDestroyElement: ->
    if player = @get('controller.mailboxPlayer')
      ($ "##{player}").jPlayer('destroy')
})
