Voice.HistoryEntryController = Ember.ObjectController.extend({

  needs: ['customer']
  customerBinding: 'controllers.customer.content'


  actions:
    toCrmTicket: ->
      @createCrmTicket()
      false


  createCrmTicket: ->
    @store.createRecord('crmTicket',
      requesterId: @get 'customer.crmuserId'
      subject:     @get 'remarks'
      description: @getDescription()
    ).save().then ->
      Voice.get('currentCustomer').fetchCrmTickets(true)


  getDescription: ->
    call  = Voice.get('currentCall.origin')
    agent = Voice.get('currentUser.displayName')
    time  = moment(call.get 'calledAt').format('LLL')

    i18n.crmuser.default_descr
        .replace('TIME',  time)
        .replace('AGENT', agent)
        .replace('CALL',  call.get 'id')


  crmuserIsActive: (->
    !!Voice.get('currentUser.crmuserId') &&
      !!@get('customer.crmuserId') && !!@get('remarks')
  ).property(
    'customer.crmuserId', 'remarks',
    'Voice.currentUser.crmuserId'
  )


  callIsCurrent: (->
    Voice.get('currentCall.id') == @get('content.callId')
  ).property('content.callId', 'Voice.currentCall')


  mailboxPlayer: (->
    mailbox = @get 'content.mailbox'
    "player-#{mailbox}" if mailbox
  ).property('content.mailbox')


  mailboxContainer: (->
    mailbox = @get 'content.mailbox'
    "container-#{mailbox}" if mailbox
  ).property('content.mailbox')
})