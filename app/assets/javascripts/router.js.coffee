ChinaTax.Router.map ->
  @resource "taxes", ->
    @route 'new'
    @route 'edit', {path: ':tax_id/edit'}
    @route 'delete', {path: ':tax_id/delete'}
