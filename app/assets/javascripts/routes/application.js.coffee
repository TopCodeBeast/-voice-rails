Voice.ApplicationRoute = Ember.Route.extend({

  model: ->
    Voice.store = @store
    Voice.aR    = @router

    Ember.RSVP.all([
      @store.find('user'),
      @store.find('call'),
      @store.find('chatMessage')
    ])


  activate: ->
    @controllerFor('users').set 'model', @store.all('user')
    @controllerFor('calls').set 'model', @store.all('call')
    @controllerFor('chatMessages').set 'model', @store.all('chatMessage')

    Voice.set 'allCalls',     @store.all('call')
    Voice.set 'allUsers',     @store.all('user')
    Voice.set 'allTickets',   @store.all('crmTicket')
    Voice.set 'allCustomers', @store.all('customer')
    Voice.set 'currentUser',  @store.getById('user', env.userId)


  shortcuts:
    'return': 'confirmDialog'
    'esc':    'closeDialog'
    'ctrl+o': 'dialNumber'
    'ctrl+h': 'hangupCall'
    'ctrl+s': 'toggleStats'
    'ctrl+a': 'toggleAgents'
    'ctrl+d': 'showDashboard'
    'ctrl+i': 'showHelpDialog'
    'ctrl+j': 'toggleForeignCalls'
    'ctrl+f': 'activateSearch'
    'ctrl+m': 'activateChat'
    'ctrl+r': 'setReady'
    'ctrl+b': 'setBusy'


  silence: (e) ->
    e.preventDefault()
    e.stopPropagation()
    false


  actions:
    showHelpDialog: (e) ->
      app.showShortcutList()
      @silence(e)

    confirmDialog: (e) ->
      Voice.dialogController.accept()
      @silence(e)

    closeDialog: (e) ->
      Voice.dialogController.cancel()
      @silence(e)

    dialNumber: (e) ->
      if Voice.get('currentCall')
        app.showDefaultError(i18n.errors.line_is_busy)
      else
        app.originateCall()
      @silence(e)

    hangupCall: (e) ->
      app.hangupCurrentCall()
      @silence(e)

    setReady: (e) ->
      app.setAvailability('ready')
      @silence(e)

    setBusy: (e) ->
      app.setAvailability('busy')
      @silence(e)

    showDashboard: (e) ->
      Voice.aR.transitionTo('/')
      @silence(e)

    toggleStats: (e) ->
      app.toggleStatsView()
      @silence(e)

    toggleAgents: (e) ->
      app.toggleAgentView()
      @silence(e)

    toggleForeignCalls: (e) ->
      Voice.toggleProperty('hideForeignCalls')
      @silence(e)

    activateSearch: (e) ->
      Ember.run.next -> ($ 'input[name=agent_search]').focus()
      @silence(e)

    activateChat: (e) ->
      Ember.run.next -> ($ 'input[name=chat_message]').focus()
      @silence(e)
})
