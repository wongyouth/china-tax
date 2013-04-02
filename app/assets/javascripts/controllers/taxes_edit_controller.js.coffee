ChinaTax.TaxesEditController = Ember.ObjectController.extend
  save: ->
    @content.get('store').commit()
