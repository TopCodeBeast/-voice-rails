Voice.EntryController = Ember.ObjectController.extend({

  needs: ['customer']
  customerBinding: 'controllers.customer.content'


  actions:
    toZendekTicket: ->
      @store.createRecord('zendeskTicket',
        requesterId: @get 'customer.zendeskId'
        subject:     @get 'remarks'
        description: @getDescription()
      ).save()
      false


  getDescription: ->
    call = Voice.currentCall.get('origin')
    time = moment(call.get 'calledAt').format()
    "This ticket was created for the call #{call.get 'id'}, at #{time}."


  zendeskIsActive: (->
    !!Voice.get('currentUser.zendeskId') &&
      !!@get('customer.zendeskId')
  ).property(
    'Voice.currentUser.zendeskId',
    'customer.zendeskId'
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
