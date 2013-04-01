ChinaTax.TaxesNewRoute = Ember.Route.extend
  renderTemplate: ->
    @render 'taxes.edit', controller: 'taxes_edit'

  model: ->
    ChinaTax.Tax.createRecord()
