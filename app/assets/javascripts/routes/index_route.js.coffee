ChinaTax.IndexRoute = Em.Route.extend
  redirect: ->
    @transitionTo 'taxes'
