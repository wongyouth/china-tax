ChinaTax.TaxRoute = Ember.Route.extend
  model: ->
    ChinaTax.Tax.createRecord()
