ChinaTax.TaxesIndexRoute = Ember.Route.extend
  model: ->
    ChinaTax.Tax.find()


