#= require jquery
#= require rails
#= require jquery.json.js
#= require jquery.websocket
#= require foundation/foundation
#= require sse_connection
#= require js-phone
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require voice

window.Voice = Ember.Application.create()

jQuery ->
  setupSSE()
  $(document).foundation()
