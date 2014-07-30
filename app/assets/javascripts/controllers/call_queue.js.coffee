Voice.CallQueueController = Ember.ArrayController.extend({

  needs: ['calls', 'users']
  contentBinding: 'controllers.calls'

  showMatchesOnly: false
  callSorting: ['calledAt']

  inboundCalls: Ember.computed.sort 'activeCalls', 'callSorting'


  activeCalls: Ember.computed.filter('content',
    (call) -> !call.get('hungup') && !call.get('connLine') &&
              !call.get('callerId').match(/^SIP.\d\d\d$/)
  ).property('content.@each.{hungup,connLine}')


  waitingCalls: Ember.computed.filter('activeCalls',
    (call) -> !call.get('bridge')
  ).property('activeCalls.@each.bridge')


  currentStatusLine: (->
    waiting   = @get('waitingCalls.length')
    customers = if waiting == 1 then 'customer is' else 'customers are'

    "#{waiting} #{customers} queued."
  ).property('waitingCalls.length')
})
