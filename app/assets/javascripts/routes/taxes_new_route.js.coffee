ChinaTax.TaxesNewRoute = Ember.Route.extend
  renderTemplate: ->
    @render 'taxes.edit'

  model: ->
    ChinaTax.Tax.createRecord()

  setupController: (controller, model)->
    @controllerFor('taxes_edit').set('content', model)

