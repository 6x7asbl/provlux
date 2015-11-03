class Provlux.Models.City extends Backbone.Model
  paramRoot: 'city'
  urlRoot: '/cities'
  initialize: ->
    self = this


class Provlux.Collections.CitiesCollection extends Backbone.Collection
