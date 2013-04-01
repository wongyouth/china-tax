ChinaTax.TaxController = Ember.ObjectController.extend
  save: ->
    @content.get('store').commit()

