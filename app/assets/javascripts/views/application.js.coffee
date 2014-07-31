Voice.ApplicationView = Ember.View.extend({

  templateName: 'application'

  didInsertElement: ->
    Ember.run.later app, app.setupPhone, 3000
    $(document).foundation()
    app.setupInterface()
    app.setupSSE()

    window.onbeforeunload = ->
      env.sseSource.close()
      phone.app.logoff()

})
