Voice.AgentOverviewController = Ember.ArrayController.extend({

  needs: ['calls', 'users']
  contentBinding: 'controllers.users'


  actions:
    dialTo: (agent) ->
      agent.call()
      false


  currentStatusLine: (->
    available = @get('content.availableAgents')
    online    = @get('content.onlineAgents')
    agents    = if online == 1 then 'agent is' else 'agents are'
    are       = if available == 1 then 'is' else 'are'

    "#{online} #{agents} online — #{available} #{are} available."
  ).property('content.{availableAgents,onlineAgents}')

})
